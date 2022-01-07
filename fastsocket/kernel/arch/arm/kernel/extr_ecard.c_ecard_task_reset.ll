; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_task_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_task_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecard_request = type { %struct.expansion_card* }
%struct.expansion_card = type { i32, i32, %struct.resource*, i64 }
%struct.resource = type { i32 }

@ECARD_RES_MEMC = common dso_local global i64 0, align 8
@ECARD_RES_EASI = common dso_local global i64 0, align 8
@ECARD_RES_IOCSYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecard_request*)* @ecard_task_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecard_task_reset(%struct.ecard_request* %0) #0 {
  %2 = alloca %struct.ecard_request*, align 8
  %3 = alloca %struct.expansion_card*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.ecard_request* %0, %struct.ecard_request** %2, align 8
  %5 = load %struct.ecard_request*, %struct.ecard_request** %2, align 8
  %6 = getelementptr inbounds %struct.ecard_request, %struct.ecard_request* %5, i32 0, i32 0
  %7 = load %struct.expansion_card*, %struct.expansion_card** %6, align 8
  store %struct.expansion_card* %7, %struct.expansion_card** %3, align 8
  %8 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %9 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %14 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %13, i32 0, i32 2
  %15 = load %struct.resource*, %struct.resource** %14, align 8
  %16 = load i64, i64* @ECARD_RES_MEMC, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %15, i64 %16
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %20 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %25 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %24, i32 0, i32 2
  %26 = load %struct.resource*, %struct.resource** %25, align 8
  %27 = load i64, i64* @ECARD_RES_EASI, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %26, i64 %27
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %31 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %30, i32 0, i32 2
  %32 = load %struct.resource*, %struct.resource** %31, align 8
  %33 = load i64, i64* @ECARD_RES_IOCSYNC, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %32, i64 %33
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi %struct.resource* [ %28, %23 ], [ %34, %29 ]
  br label %37

37:                                               ; preds = %35, %12
  %38 = phi %struct.resource* [ %17, %12 ], [ %36, %35 ]
  store %struct.resource* %38, %struct.resource** %4, align 8
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %43 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ecard_loader_reset(i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @ecard_loader_reset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
