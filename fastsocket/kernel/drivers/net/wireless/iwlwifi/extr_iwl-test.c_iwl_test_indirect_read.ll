; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_indirect_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_indirect_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.TYPE_2__, %struct.iwl_trans* }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.iwl_trans = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWL_ABS_PRPH_START = common dso_local global i32 0, align 4
@PRPH_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HBUS_TARG_PRPH_RADDR = common dso_local global i32 0, align 4
@HBUS_TARG_PRPH_RDAT = common dso_local global i32 0, align 4
@DUMP_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, i32, i32)* @iwl_test_indirect_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_indirect_read(%struct.iwl_test* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_trans*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %11, i32 0, i32 1
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  store %struct.iwl_trans* %13, %struct.iwl_trans** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %112

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i32 %28, i32 %29)
  %31 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32* %30, i32** %33, align 8
  %34 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %112

42:                                               ; preds = %20
  %43 = load i32, i32* @IWL_ABS_PRPH_START, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IWL_ABS_PRPH_START, align 4
  %49 = load i32, i32* @PRPH_END, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %46
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %54 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %53, i32 0, i64* %9)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %112

59:                                               ; preds = %52
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %61 = load i32, i32* @HBUS_TARG_PRPH_RADDR, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, 50331648
  %64 = call i32 @iwl_write32(%struct.iwl_trans* %60, i32 %61, i32 %63)
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %80, %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %71 = load i32, i32* @HBUS_TARG_PRPH_RDAT, align 4
  %72 = call i32 @iwl_read32(%struct.iwl_trans* %70, i32 %71)
  %73 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %74 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 4
  store i32 %82, i32* %10, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %85 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %84, i64* %9)
  br label %99

86:                                               ; preds = %46, %42
  %87 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %90 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %94 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 4
  %98 = call i32 @iwl_trans_read_mem(%struct.iwl_trans* %87, i32 %88, i32* %92, i32 %97)
  br label %99

99:                                               ; preds = %86, %83
  %100 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %105 = call i32 @DIV_ROUND_UP(i32 %103, i32 %104)
  %106 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %107 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %110 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %99, %56, %39, %17
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i32, i64*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_trans_read_mem(%struct.iwl_trans*, i32, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
