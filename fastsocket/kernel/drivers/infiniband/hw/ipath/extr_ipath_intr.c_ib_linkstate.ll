; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ib_linkstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ib_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Arm\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ipath_devdata*, i32)* @ib_linkstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ib_linkstate(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @ipath_ib_state(%struct.ipath_devdata* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %32

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %31

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i8*, i8** %5, align 8
  ret i8* %34
}

declare dso_local i64 @ipath_ib_state(%struct.ipath_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
