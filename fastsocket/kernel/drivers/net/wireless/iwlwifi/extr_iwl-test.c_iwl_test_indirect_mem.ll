; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_indirect_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_indirect_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nlattr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8
@IWL_TM_ATTR_MEM_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error finding memory offset address\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@IWL_TM_ATTR_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error finding size for memory reading\0A\00", align 1
@IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ = common dso_local global i64 0, align 8
@IWL_TM_ATTR_BUFFER_DUMP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.nlattr**)* @iwl_test_indirect_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_indirect_mem(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = call i64 @nla_get_u32(%struct.nlattr* %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %25 = load i64, i64* @IWL_TM_ATTR_MEM_ADDR, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %18
  %30 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @IWL_ERR(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMSG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %18
  %37 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %38 = load i64, i64* @IWL_TM_ATTR_MEM_ADDR, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i64 @nla_get_u32(%struct.nlattr* %40)
  store i64 %41, i64* %6, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %43 = load i64, i64* @IWL_TM_ATTR_BUFFER_SIZE, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @IWL_ERR(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMSG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %36
  %55 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %56 = load i64, i64* @IWL_TM_ATTR_BUFFER_SIZE, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i64 @nla_get_u32(%struct.nlattr* %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @iwl_test_indirect_read(%struct.iwl_test* %64, i64 %65, i64 %66)
  store i32 %67, i32* %3, align 4
  br label %89

68:                                               ; preds = %54
  %69 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %70 = load i64, i64* @IWL_TM_ATTR_BUFFER_DUMP, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %79 = load i64, i64* @IWL_TM_ATTR_BUFFER_DUMP, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i64 @nla_data(%struct.nlattr* %81)
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %9, align 8
  %84 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @iwl_test_indirect_write(%struct.iwl_test* %84, i64 %85, i64 %86, i8* %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %74, %63, %47, %29, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @IWL_ERR(i32, i8*) #1

declare dso_local i32 @iwl_test_indirect_read(%struct.iwl_test*, i64, i64) #1

declare dso_local i64 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @iwl_test_indirect_write(%struct.iwl_test*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
