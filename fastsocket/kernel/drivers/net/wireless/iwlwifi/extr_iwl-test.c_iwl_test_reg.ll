; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.iwl_trans* }
%struct.iwl_trans = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@IWL_TM_ATTR_REG_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Missing reg offset\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"test reg access cmd offset=0x%x\0A\00", align 1
@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8
@FH_MEM_UPPER_BOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"offset out of segment (0x0 - 0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"32 value to read 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Memory allocation fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IWL_TM_ATTR_REG_VALUE32 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Error sending msg : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Missing value to write\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"32b write val=0x%x\0A\00", align 1
@IWL_TM_ATTR_REG_VALUE8 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"8b write val=0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unknown test register cmd ID\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.nlattr**)* @iwl_test_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_reg(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %13, i32 0, i32 0
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %14, align 8
  store %struct.iwl_trans* %15, %struct.iwl_trans** %12, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @IWL_TM_ATTR_REG_OFFSET, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %23 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMSG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %153

26:                                               ; preds = %2
  %27 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %28 = load i64, i64* @IWL_TM_ATTR_REG_OFFSET, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i64 @nla_get_u32(%struct.nlattr* %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i64 @nla_get_u32(%struct.nlattr* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @FH_MEM_UPPER_BOUND, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %45 = load i64, i64* @FH_MEM_UPPER_BOUND, align 8
  %46 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %153

49:                                               ; preds = %26
  %50 = load i64, i64* %8, align 8
  switch i64 %50, label %141 [
    i64 130, label %51
    i64 129, label %87
    i64 128, label %114
  ]

51:                                               ; preds = %49
  %52 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %52, i32 0, i32 0
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @iwl_read_direct32(%struct.iwl_trans* %54, i64 %55)
  store i64 %56, i64* %7, align 8
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %61 = call %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test* %60, i32 20)
  store %struct.sk_buff* %61, %struct.sk_buff** %10, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %51
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %66 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %153

69:                                               ; preds = %51
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = load i64, i64* @IWL_TM_ATTR_REG_VALUE32, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @nla_put_u32(%struct.sk_buff* %70, i64 %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %148

76:                                               ; preds = %69
  %77 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = call i32 @iwl_test_reply(%struct.iwl_test* %77, %struct.sk_buff* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  br label %146

87:                                               ; preds = %49
  %88 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %89 = load i64, i64* @IWL_TM_ATTR_REG_VALUE32, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %95 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* @ENOMSG, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %153

98:                                               ; preds = %87
  %99 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %100 = load i64, i64* @IWL_TM_ATTR_REG_VALUE32, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %99, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = call i64 @nla_get_u32(%struct.nlattr* %102)
  store i64 %103, i64* %7, align 8
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %105)
  %107 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %108 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %107, i32 0, i32 0
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @iwl_write_direct32(%struct.iwl_trans* %109, i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %98
  br label %146

114:                                              ; preds = %49
  %115 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %116 = load i64, i64* @IWL_TM_ATTR_REG_VALUE8, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %115, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = icmp ne %struct.nlattr* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %122 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i32, i32* @ENOMSG, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %153

125:                                              ; preds = %114
  %126 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %127 = load i64, i64* @IWL_TM_ATTR_REG_VALUE8, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %126, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = call i64 @nla_get_u8(%struct.nlattr* %129)
  store i64 %130, i64* %9, align 8
  %131 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %132)
  %134 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %135 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %134, i32 0, i32 0
  %136 = load %struct.iwl_trans*, %struct.iwl_trans** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @iwl_write8(%struct.iwl_trans* %136, i64 %137, i64 %138)
  br label %140

140:                                              ; preds = %125
  br label %146

141:                                              ; preds = %49
  %142 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  %143 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %144 = load i32, i32* @ENOMSG, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %153

146:                                              ; preds = %140, %113, %86
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %153

148:                                              ; preds = %75
  %149 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %150 = call i32 @kfree_skb(%struct.sk_buff* %149)
  %151 = load i32, i32* @EMSGSIZE, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %146, %141, %120, %93, %64, %43, %21
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i64) #1

declare dso_local i64 @iwl_read_direct32(%struct.iwl_trans*, i64) #1

declare dso_local %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test*, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @iwl_test_reply(%struct.iwl_test*, %struct.sk_buff*) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i64, i64) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i64, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
