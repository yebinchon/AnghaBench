; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_freq_table.c_cpufreq_frequency_table_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_freq_table.c_cpufreq_frequency_table_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i32, i32 }
%struct.cpufreq_policy = type { i32, i32, i32 }

@__const.cpufreq_frequency_table_target.optimal = private unnamed_addr constant %struct.cpufreq_frequency_table { i32 -1, i32 0 }, align 4
@__const.cpufreq_frequency_table_target.suboptimal = private unnamed_addr constant %struct.cpufreq_frequency_table { i32 -1, i32 0 }, align 4
@.str = private unnamed_addr constant [53 x i8] c"request for target %u kHz (relation: %u) for cpu %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"target is %u (%u kHz, %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %0, %struct.cpufreq_frequency_table* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpufreq_policy*, align 8
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cpufreq_frequency_table, align 4
  %13 = alloca %struct.cpufreq_frequency_table, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %7, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = bitcast %struct.cpufreq_frequency_table* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.cpufreq_frequency_table* @__const.cpufreq_frequency_table_target.optimal to i8*), i64 8, i1 false)
  %17 = bitcast %struct.cpufreq_frequency_table* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.cpufreq_frequency_table* @__const.cpufreq_frequency_table_target.suboptimal to i8*), i64 8, i1 false)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %22)
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %29 [
    i32 129, label %25
    i32 128, label %27
  ]

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  br label %29

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %5, %27, %25
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_online(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %171

38:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %129, %38
  %40 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %40, i64 %42
  %44 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %132

48:                                               ; preds = %39
  %49 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %49, i64 %51
  %53 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %129

59:                                               ; preds = %48
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %62 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %68 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ugt i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %59
  br label %129

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  switch i32 %73, label %128 [
    i32 129, label %74
    i32 128, label %101
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32, i32* %15, align 4
  %80 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp uge i32 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  %85 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %78
  br label %100

89:                                               ; preds = %74
  %90 = load i32, i32* %15, align 4
  %91 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ule i32 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  %96 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %88
  br label %128

101:                                              ; preds = %72
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp uge i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  %107 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ule i32 %106, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* %15, align 4
  %112 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %127

116:                                              ; preds = %101
  %117 = load i32, i32* %15, align 4
  %118 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp uge i32 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32, i32* %15, align 4
  %123 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %72, %127, %100
  br label %129

129:                                              ; preds = %128, %71, %58
  %130 = load i32, i32* %14, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %39

132:                                              ; preds = %39
  %133 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ugt i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %171

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  br label %153

149:                                              ; preds = %132
  %150 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %12, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %11, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %156, i64 %159
  %161 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %163, i64 %166
  %168 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %162, i32 %169)
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %153, %142, %35
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #2

declare dso_local i32 @cpu_online(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
