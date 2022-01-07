; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_can_break_anticipation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_can_break_anticipation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32, i32, i64, i64, i64, %struct.io_context* }
%struct.io_context = type { i32, %struct.as_io_context* }
%struct.as_io_context = type { i64, i64, i32, i32, i32 }
%struct.request = type { i32 }

@AS_TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as_data*, %struct.request*)* @as_can_break_anticipation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_can_break_anticipation(%struct.as_data* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.as_data*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.io_context*, align 8
  %7 = alloca %struct.as_io_context*, align 8
  store %struct.as_data* %0, %struct.as_data** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.as_data*, %struct.as_data** %4, align 8
  %9 = getelementptr inbounds %struct.as_data, %struct.as_data* %8, i32 0, i32 5
  %10 = load %struct.io_context*, %struct.io_context** %9, align 8
  store %struct.io_context* %10, %struct.io_context** %6, align 8
  %11 = load %struct.io_context*, %struct.io_context** %6, align 8
  %12 = icmp ne %struct.io_context* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.io_context*, %struct.io_context** %6, align 8
  %17 = getelementptr inbounds %struct.io_context, %struct.io_context* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = icmp ne %struct.request* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.io_context*, %struct.io_context** %6, align 8
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = call %struct.io_context* @RQ_IOC(%struct.request* %23)
  %25 = icmp eq %struct.io_context* %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.io_context*, %struct.io_context** %6, align 8
  %28 = getelementptr inbounds %struct.io_context, %struct.io_context* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 1, i32* %3, align 4
  br label %198

30:                                               ; preds = %21, %2
  %31 = load %struct.as_data*, %struct.as_data** %4, align 8
  %32 = getelementptr inbounds %struct.as_data, %struct.as_data* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.as_data*, %struct.as_data** %4, align 8
  %37 = call i64 @as_antic_expired(%struct.as_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.io_context*, %struct.io_context** %6, align 8
  %41 = getelementptr inbounds %struct.io_context, %struct.io_context* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  store i32 1, i32* %3, align 4
  br label %198

43:                                               ; preds = %35, %30
  %44 = load %struct.io_context*, %struct.io_context** %6, align 8
  %45 = getelementptr inbounds %struct.io_context, %struct.io_context* %44, i32 0, i32 1
  %46 = load %struct.as_io_context*, %struct.as_io_context** %45, align 8
  store %struct.as_io_context* %46, %struct.as_io_context** %7, align 8
  %47 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %48 = icmp ne %struct.as_io_context* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.io_context*, %struct.io_context** %6, align 8
  %51 = getelementptr inbounds %struct.io_context, %struct.io_context* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  store i32 0, i32* %3, align 4
  br label %198

53:                                               ; preds = %43
  %54 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %55 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %54, i32 0, i32 4
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.io_context*, %struct.io_context** %6, align 8
  %60 = getelementptr inbounds %struct.io_context, %struct.io_context* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  store i32 1, i32* %3, align 4
  br label %198

62:                                               ; preds = %53
  %63 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %64 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %63, i32 0, i32 3
  %65 = call i64 @atomic_read(i32* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.io_context*, %struct.io_context** %6, align 8
  %69 = getelementptr inbounds %struct.io_context, %struct.io_context* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  store i32 1, i32* %3, align 4
  br label %198

71:                                               ; preds = %62
  %72 = load %struct.request*, %struct.request** %5, align 8
  %73 = icmp ne %struct.request* %72, null
  br i1 %73, label %74, label %120

74:                                               ; preds = %71
  %75 = load %struct.request*, %struct.request** %5, align 8
  %76 = call i64 @rq_is_sync(%struct.request* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %74
  %79 = load %struct.as_data*, %struct.as_data** %4, align 8
  %80 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %81 = load %struct.request*, %struct.request** %5, align 8
  %82 = call i64 @as_close_req(%struct.as_data* %79, %struct.as_io_context* %80, %struct.request* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %78
  %85 = load i32, i32* @AS_TASK_RUNNING, align 4
  %86 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %87 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %86, i32 0, i32 2
  %88 = call i32 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %84
  %91 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %92 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.as_data*, %struct.as_data** %4, align 8
  %97 = getelementptr inbounds %struct.as_data, %struct.as_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 7, %98
  %100 = add nsw i32 %99, 256
  %101 = sdiv i32 %100, 8
  %102 = load %struct.as_data*, %struct.as_data** %4, align 8
  %103 = getelementptr inbounds %struct.as_data, %struct.as_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %95, %90
  %105 = load %struct.as_data*, %struct.as_data** %4, align 8
  %106 = getelementptr inbounds %struct.as_data, %struct.as_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 7, %107
  %109 = sdiv i32 %108, 8
  %110 = load %struct.as_data*, %struct.as_data** %4, align 8
  %111 = getelementptr inbounds %struct.as_data, %struct.as_data* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %84
  %113 = load %struct.as_data*, %struct.as_data** %4, align 8
  %114 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %115 = load %struct.request*, %struct.request** %5, align 8
  %116 = call i32 @as_update_iohist(%struct.as_data* %113, %struct.as_io_context* %114, %struct.request* %115)
  %117 = load %struct.io_context*, %struct.io_context** %6, align 8
  %118 = getelementptr inbounds %struct.io_context, %struct.io_context* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock(i32* %118)
  store i32 1, i32* %3, align 4
  br label %198

120:                                              ; preds = %78, %74, %71
  %121 = load i32, i32* @AS_TASK_RUNNING, align 4
  %122 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %123 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %122, i32 0, i32 2
  %124 = call i32 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %150, label %126

126:                                              ; preds = %120
  %127 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %128 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.as_data*, %struct.as_data** %4, align 8
  %133 = getelementptr inbounds %struct.as_data, %struct.as_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 7, %134
  %136 = add nsw i32 %135, 256
  %137 = sdiv i32 %136, 8
  %138 = load %struct.as_data*, %struct.as_data** %4, align 8
  %139 = getelementptr inbounds %struct.as_data, %struct.as_data* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %131, %126
  %141 = load %struct.as_data*, %struct.as_data** %4, align 8
  %142 = getelementptr inbounds %struct.as_data, %struct.as_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 128
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.io_context*, %struct.io_context** %6, align 8
  %147 = getelementptr inbounds %struct.io_context, %struct.io_context* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock(i32* %147)
  store i32 1, i32* %3, align 4
  br label %198

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %120
  %151 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %152 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %150
  %156 = load %struct.as_data*, %struct.as_data** %4, align 8
  %157 = getelementptr inbounds %struct.as_data, %struct.as_data* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.as_data*, %struct.as_data** %4, align 8
  %160 = getelementptr inbounds %struct.as_data, %struct.as_data* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load %struct.io_context*, %struct.io_context** %6, align 8
  %165 = getelementptr inbounds %struct.io_context, %struct.io_context* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock(i32* %165)
  store i32 1, i32* %3, align 4
  br label %198

167:                                              ; preds = %155
  %168 = load %struct.as_data*, %struct.as_data** %4, align 8
  %169 = getelementptr inbounds %struct.as_data, %struct.as_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.as_data*, %struct.as_data** %4, align 8
  %172 = getelementptr inbounds %struct.as_data, %struct.as_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = icmp sgt i32 %174, 32768
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load %struct.io_context*, %struct.io_context** %6, align 8
  %178 = getelementptr inbounds %struct.io_context, %struct.io_context* %177, i32 0, i32 0
  %179 = call i32 @spin_unlock(i32* %178)
  store i32 1, i32* %3, align 4
  br label %198

180:                                              ; preds = %167
  br label %194

181:                                              ; preds = %150
  %182 = load %struct.as_io_context*, %struct.as_io_context** %7, align 8
  %183 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.as_data*, %struct.as_data** %4, align 8
  %186 = getelementptr inbounds %struct.as_data, %struct.as_data* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %184, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = load %struct.io_context*, %struct.io_context** %6, align 8
  %191 = getelementptr inbounds %struct.io_context, %struct.io_context* %190, i32 0, i32 0
  %192 = call i32 @spin_unlock(i32* %191)
  store i32 1, i32* %3, align 4
  br label %198

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193, %180
  %195 = load %struct.io_context*, %struct.io_context** %6, align 8
  %196 = getelementptr inbounds %struct.io_context, %struct.io_context* %195, i32 0, i32 0
  %197 = call i32 @spin_unlock(i32* %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %189, %176, %163, %145, %112, %67, %58, %49, %39, %26
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.io_context* @RQ_IOC(%struct.request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @as_antic_expired(%struct.as_data*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i64 @as_close_req(%struct.as_data*, %struct.as_io_context*, %struct.request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @as_update_iohist(%struct.as_data*, %struct.as_io_context*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
