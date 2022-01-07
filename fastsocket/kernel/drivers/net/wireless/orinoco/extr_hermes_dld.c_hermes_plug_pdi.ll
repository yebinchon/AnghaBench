; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes_dld.c_hermes_plug_pdi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes_dld.c_hermes_plug_pdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i64)* }
%struct.pdr = type { i32 }
%struct.pdi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, %struct.pdr*, %struct.pdi*, i8*)* @hermes_plug_pdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_plug_pdi(%struct.hermes* %0, %struct.pdr* %1, %struct.pdi* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hermes*, align 8
  %7 = alloca %struct.pdr*, align 8
  %8 = alloca %struct.pdi*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pdr*, align 8
  store %struct.hermes* %0, %struct.hermes** %6, align 8
  store %struct.pdr* %1, %struct.pdr** %7, align 8
  store %struct.pdi* %2, %struct.pdi** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.pdr*, %struct.pdr** %7, align 8
  %12 = load %struct.pdi*, %struct.pdi** %8, align 8
  %13 = call i32 @pdi_id(%struct.pdi* %12)
  %14 = load i8*, i8** %9, align 8
  %15 = call %struct.pdr* @hermes_find_pdr(%struct.pdr* %11, i32 %13, i8* %14)
  store %struct.pdr* %15, %struct.pdr** %10, align 8
  %16 = load %struct.pdr*, %struct.pdr** %10, align 8
  %17 = icmp ne %struct.pdr* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.pdi*, %struct.pdi** %8, align 8
  %21 = call i64 @pdi_len(%struct.pdi* %20)
  %22 = load %struct.pdr*, %struct.pdr** %10, align 8
  %23 = call i64 @pdr_len(%struct.pdr* %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %43

28:                                               ; preds = %19
  %29 = load %struct.hermes*, %struct.hermes** %6, align 8
  %30 = getelementptr inbounds %struct.hermes, %struct.hermes* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hermes*, i32, i32, i64)*, i32 (%struct.hermes*, i32, i32, i64)** %32, align 8
  %34 = load %struct.hermes*, %struct.hermes** %6, align 8
  %35 = load %struct.pdi*, %struct.pdi** %8, align 8
  %36 = getelementptr inbounds %struct.pdi, %struct.pdi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pdr*, %struct.pdr** %10, align 8
  %39 = call i32 @pdr_addr(%struct.pdr* %38)
  %40 = load %struct.pdi*, %struct.pdi** %8, align 8
  %41 = call i64 @pdi_len(%struct.pdi* %40)
  %42 = call i32 %33(%struct.hermes* %34, i32 %37, i32 %39, i64 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %28, %25, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.pdr* @hermes_find_pdr(%struct.pdr*, i32, i8*) #1

declare dso_local i32 @pdi_id(%struct.pdi*) #1

declare dso_local i64 @pdi_len(%struct.pdi*) #1

declare dso_local i64 @pdr_len(%struct.pdr*) #1

declare dso_local i32 @pdr_addr(%struct.pdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
