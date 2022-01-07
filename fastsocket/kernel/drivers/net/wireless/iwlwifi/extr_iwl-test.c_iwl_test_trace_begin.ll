; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_trace_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_trace_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IWL_TM_ATTR_TRACE_SIZE = common dso_local global i64 0, align 8
@TRACE_BUFF_SIZE_DEF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TRACE_BUFF_SIZE_MIN = common dso_local global i64 0, align 8
@TRACE_BUFF_SIZE_MAX = common dso_local global i64 0, align 8
@TRACE_BUFF_PADD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Memory allocation fail\0A\00", align 1
@IWL_TM_ATTR_TRACE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error sending msg : %d\0A\00", align 1
@DUMP_CHUNK_SIZE = common dso_local global i32 0, align 4
@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8
@IWL_TM_CMD_APP2DEV_BEGIN_TRACE = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.nlattr**)* @iwl_test_trace_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_trace_begin(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %180

16:                                               ; preds = %2
  %17 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %18 = load i64, i64* @IWL_TM_ATTR_TRACE_SIZE, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @TRACE_BUFF_SIZE_DEF, align 8
  %24 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %29 = load i64, i64* @IWL_TM_ATTR_TRACE_SIZE, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i64 @nla_get_u32(%struct.nlattr* %31)
  %33 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %180

45:                                               ; preds = %36
  %46 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRACE_BUFF_SIZE_MIN, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TRACE_BUFF_SIZE_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %180

62:                                               ; preds = %52
  %63 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TRACE_BUFF_PADD, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %70 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @dma_alloc_coherent(i32 %76, i64 %80, i32* %83, i32 %84)
  %86 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %87 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  store i32 %85, i32* %88, align 8
  %89 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %90 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %62
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %180

97:                                               ; preds = %62
  %98 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %102 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @PTR_ALIGN(i32 %104, i32 256)
  %106 = inttoptr i64 %105 to i32*
  %107 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %108 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i32* %106, i32** %109, align 8
  %110 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %111 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %115 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @memset(i32* %113, i32 59, i64 %117)
  %119 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %120 = call %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test* %119, i32 24)
  store %struct.sk_buff* %120, %struct.sk_buff** %6, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %97
  %124 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = call i32 (%struct.TYPE_4__*, i8*, ...) @IWL_ERR(%struct.TYPE_4__* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %129 = call i32 @iwl_test_trace_stop(%struct.iwl_test* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %180

132:                                              ; preds = %97
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = load i32, i32* @IWL_TM_ATTR_TRACE_ADDR, align 4
  %135 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %136 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = call i64 @nla_put(%struct.sk_buff* %133, i32 %134, i32 4, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %164

141:                                              ; preds = %132
  %142 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = call i32 @iwl_test_reply(%struct.iwl_test* %142, %struct.sk_buff* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %149 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.TYPE_4__*, i8*, ...) @IWL_ERR(%struct.TYPE_4__* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %155 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %159 = call i32 @DIV_ROUND_UP(i64 %157, i32 %158)
  %160 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %161 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 8
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %3, align 4
  br label %180

164:                                              ; preds = %140
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = call i32 @kfree_skb(%struct.sk_buff* %165)
  %167 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %168 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %167, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = call i64 @nla_get_u32(%struct.nlattr* %170)
  %172 = load i64, i64* @IWL_TM_CMD_APP2DEV_BEGIN_TRACE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %164
  %175 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %176 = call i32 @iwl_test_trace_stop(%struct.iwl_test* %175)
  br label %177

177:                                              ; preds = %174, %164
  %178 = load i32, i32* @EMSGSIZE, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %177, %153, %123, %94, %59, %42, %13
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i64 @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @iwl_test_trace_stop(%struct.iwl_test*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @iwl_test_reply(%struct.iwl_test*, %struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
