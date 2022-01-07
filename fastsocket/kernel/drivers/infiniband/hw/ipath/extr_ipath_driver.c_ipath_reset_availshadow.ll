; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_reset_availshadow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_reset_availshadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32*, i32*, i32* }

@ipath_pioavail_lock = common dso_local global i32 0, align 4
@IPATH_SWAP_PIOBUFS = common dso_local global i32 0, align 4
@INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"shadow[%d] was %Lx, now %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_reset_availshadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_reset_availshadow(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @ipath_pioavail_lock, i64 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %92, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %95

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IPATH_SWAP_PIOBUFS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = xor i32 %27, 1
  br label %31

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le64_to_cpu(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* @INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, -6148914691236517206
  %62 = or i64 %49, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %70, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %31
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ipath_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %80, i64 %82, i32 %89)
  br label %91

91:                                               ; preds = %79, %31
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %10

95:                                               ; preds = %10
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* @ipath_pioavail_lock, i64 %96)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
