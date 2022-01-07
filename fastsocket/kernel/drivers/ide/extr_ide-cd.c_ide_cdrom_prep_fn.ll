; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @ide_cdrom_prep_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cdrom_prep_fn(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.request*, %struct.request** %5, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REQ_TYPE_FS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = call i32 @ide_cdrom_prep_fs(%struct.request_queue* %12, %struct.request* %13)
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.request*, %struct.request** %5, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @ide_cdrom_prep_pc(%struct.request* %22)
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ide_cdrom_prep_fs(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @ide_cdrom_prep_pc(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
