; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_get_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_get_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.flchip = type { i64, i64, i32, i32*, i32, %struct.flchip_shared* }
%struct.flchip_shared = type { i32, %struct.flchip*, %struct.flchip* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@FL_ERASING = common dso_local global i32 0, align 4
@FL_OTP_WRITE = common dso_local global i32 0, align 4
@FL_SHUTDOWN = common dso_local global i32 0, align 4
@FL_SYNCING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i64, i32)* @get_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chip(%struct.map_info* %0, %struct.flchip* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca %struct.flchip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.flchip_shared*, align 8
  %12 = alloca %struct.flchip*, align 8
  store %struct.map_info* %0, %struct.map_info** %6, align 8
  store %struct.flchip* %1, %struct.flchip** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %192, %146, %113, %90, %69, %4
  %17 = load %struct.flchip*, %struct.flchip** %7, align 8
  %18 = getelementptr inbounds %struct.flchip, %struct.flchip* %17, i32 0, i32 5
  %19 = load %struct.flchip_shared*, %struct.flchip_shared** %18, align 8
  %20 = icmp ne %struct.flchip_shared* %19, null
  br i1 %20, label %21, label %182

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FL_WRITING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FL_ERASING, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FL_OTP_WRITE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FL_SHUTDOWN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %182

37:                                               ; preds = %33, %29, %25, %21
  %38 = load %struct.flchip*, %struct.flchip** %7, align 8
  %39 = getelementptr inbounds %struct.flchip, %struct.flchip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FL_SYNCING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %182

43:                                               ; preds = %37
  %44 = load %struct.flchip*, %struct.flchip** %7, align 8
  %45 = getelementptr inbounds %struct.flchip, %struct.flchip* %44, i32 0, i32 5
  %46 = load %struct.flchip_shared*, %struct.flchip_shared** %45, align 8
  store %struct.flchip_shared* %46, %struct.flchip_shared** %11, align 8
  %47 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %48 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %51 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %50, i32 0, i32 2
  %52 = load %struct.flchip*, %struct.flchip** %51, align 8
  store %struct.flchip* %52, %struct.flchip** %12, align 8
  %53 = load %struct.flchip*, %struct.flchip** %12, align 8
  %54 = icmp ne %struct.flchip* %53, null
  br i1 %54, label %55, label %129

55:                                               ; preds = %43
  %56 = load %struct.flchip*, %struct.flchip** %12, align 8
  %57 = load %struct.flchip*, %struct.flchip** %7, align 8
  %58 = icmp ne %struct.flchip* %56, %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %55
  %60 = load %struct.flchip*, %struct.flchip** %12, align 8
  %61 = getelementptr inbounds %struct.flchip, %struct.flchip* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @spin_trylock(i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %65 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %16

70:                                               ; preds = %59
  %71 = load %struct.flchip*, %struct.flchip** %7, align 8
  %72 = getelementptr inbounds %struct.flchip, %struct.flchip* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.map_info*, %struct.map_info** %6, align 8
  %76 = load %struct.flchip*, %struct.flchip** %12, align 8
  %77 = load %struct.flchip*, %struct.flchip** %12, align 8
  %78 = getelementptr inbounds %struct.flchip, %struct.flchip* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @chip_ready(%struct.map_info* %75, %struct.flchip* %76, i64 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.flchip*, %struct.flchip** %7, align 8
  %83 = getelementptr inbounds %struct.flchip, %struct.flchip* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %70
  %91 = load %struct.flchip*, %struct.flchip** %12, align 8
  %92 = getelementptr inbounds %struct.flchip, %struct.flchip* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @spin_unlock(i32* %93)
  br label %16

95:                                               ; preds = %70
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.flchip*, %struct.flchip** %12, align 8
  %100 = getelementptr inbounds %struct.flchip, %struct.flchip* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %195

104:                                              ; preds = %95
  %105 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %106 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %105, i32 0, i32 0
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load %struct.flchip*, %struct.flchip** %7, align 8
  %109 = getelementptr inbounds %struct.flchip, %struct.flchip* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @FL_SYNCING, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %104
  %114 = load %struct.map_info*, %struct.map_info** %6, align 8
  %115 = load %struct.flchip*, %struct.flchip** %12, align 8
  %116 = load %struct.flchip*, %struct.flchip** %12, align 8
  %117 = getelementptr inbounds %struct.flchip, %struct.flchip* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @put_chip(%struct.map_info* %114, %struct.flchip* %115, i64 %118)
  %120 = load %struct.flchip*, %struct.flchip** %12, align 8
  %121 = getelementptr inbounds %struct.flchip, %struct.flchip* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @spin_unlock(i32* %122)
  br label %16

124:                                              ; preds = %104
  %125 = load %struct.flchip*, %struct.flchip** %12, align 8
  %126 = getelementptr inbounds %struct.flchip, %struct.flchip* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @spin_unlock(i32* %127)
  br label %129

129:                                              ; preds = %124, %55, %43
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @FL_ERASING, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %129
  %134 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %135 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %134, i32 0, i32 1
  %136 = load %struct.flchip*, %struct.flchip** %135, align 8
  %137 = icmp ne %struct.flchip* %136, null
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  %139 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %140 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %139, i32 0, i32 1
  %141 = load %struct.flchip*, %struct.flchip** %140, align 8
  %142 = getelementptr inbounds %struct.flchip, %struct.flchip* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @FL_ERASING, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %138
  %147 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %148 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %147, i32 0, i32 0
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %151 = call i32 @set_current_state(i32 %150)
  %152 = load %struct.flchip*, %struct.flchip** %7, align 8
  %153 = getelementptr inbounds %struct.flchip, %struct.flchip* %152, i32 0, i32 4
  %154 = call i32 @add_wait_queue(i32* %153, i32* @wait)
  %155 = load %struct.flchip*, %struct.flchip** %7, align 8
  %156 = getelementptr inbounds %struct.flchip, %struct.flchip* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = call i32 (...) @schedule()
  %160 = load %struct.flchip*, %struct.flchip** %7, align 8
  %161 = getelementptr inbounds %struct.flchip, %struct.flchip* %160, i32 0, i32 4
  %162 = call i32 @remove_wait_queue(i32* %161, i32* @wait)
  %163 = load %struct.flchip*, %struct.flchip** %7, align 8
  %164 = getelementptr inbounds %struct.flchip, %struct.flchip* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @spin_lock(i32* %165)
  br label %16

167:                                              ; preds = %138, %133, %129
  %168 = load %struct.flchip*, %struct.flchip** %7, align 8
  %169 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %170 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %169, i32 0, i32 2
  store %struct.flchip* %168, %struct.flchip** %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @FL_ERASING, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.flchip*, %struct.flchip** %7, align 8
  %176 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %177 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %176, i32 0, i32 1
  store %struct.flchip* %175, %struct.flchip** %177, align 8
  br label %178

178:                                              ; preds = %174, %167
  %179 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %180 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %179, i32 0, i32 0
  %181 = call i32 @spin_unlock(i32* %180)
  br label %182

182:                                              ; preds = %178, %37, %33, %16
  %183 = load %struct.map_info*, %struct.map_info** %6, align 8
  %184 = load %struct.flchip*, %struct.flchip** %7, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @chip_ready(%struct.map_info* %183, %struct.flchip* %184, i64 %185, i32 %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @EAGAIN, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %16

193:                                              ; preds = %182
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %193, %98
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @chip_ready(%struct.map_info*, %struct.flchip*, i64, i32) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
