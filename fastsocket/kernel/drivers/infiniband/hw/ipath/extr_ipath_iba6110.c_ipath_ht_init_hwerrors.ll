; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_init_hwerrors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_init_hwerrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INFINIPATH_EXTS_MEMBIST_ENDTEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MemBIST did not complete!\0A\00", align 1
@INFINIPATH_EXTS_MEMBIST_CORRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MemBIST corrected\0A\00", align 1
@IPATH_8BIT_IN_HT0 = common dso_local global i32 0, align 4
@infinipath_hwe_htclnkabyte1crcerr = common dso_local global i32 0, align 4
@IPATH_8BIT_IN_HT1 = common dso_local global i32 0, align 4
@infinipath_hwe_htclnkbbyte1crcerr = common dso_local global i32 0, align 4
@INFINIPATH_HWE_SERDESPLLFAILED = common dso_local global i32 0, align 4
@INFINIPATH_HWE_RXDSYNCMEMPARITYERR = common dso_local global i32 0, align 4
@INFINIPATH_HWE_HTCMISCERR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_ht_init_hwerrors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_ht_init_hwerrors(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %5, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @INFINIPATH_EXTS_MEMBIST_ENDTEST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = call i32 @ipath_dev_err(%struct.ipath_devdata* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @INFINIPATH_EXTS_MEMBIST_CORRECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @ipath_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %28 = call i32 @ipath_check_htlink(%struct.ipath_devdata* %27)
  store i32 -1, i32* %3, align 4
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IPATH_8BIT_IN_HT0, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @infinipath_hwe_htclnkabyte1crcerr, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IPATH_8BIT_IN_HT1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @infinipath_hwe_htclnkbbyte1crcerr, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* @INFINIPATH_HWE_SERDESPLLFAILED, align 4
  %54 = load i32, i32* @INFINIPATH_HWE_RXDSYNCMEMPARITYERR, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @INFINIPATH_HWE_HTCMISCERR4, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %64 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %72, label %67

67:                                               ; preds = %52
  %68 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %69 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %52
  %73 = load i32, i32* @INFINIPATH_HWE_SERDESPLLFAILED, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %80 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  ret void
}

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

declare dso_local i32 @ipath_dbg(i8*) #1

declare dso_local i32 @ipath_check_htlink(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
