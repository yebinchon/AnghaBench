; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_get_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_get_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.flchip = type { i64, i32, i32*, i32, %struct.flchip_shared* }
%struct.flchip_shared = type { i32, %struct.flchip*, %struct.flchip* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@FL_ERASING = common dso_local global i32 0, align 4
@FL_SYNCING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i32)* @get_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chip(%struct.map_info* %0, %struct.flchip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flchip_shared*, align 8
  %10 = alloca %struct.flchip*, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store %struct.flchip* %1, %struct.flchip** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %175, %130, %100, %77, %59, %3
  %15 = load %struct.flchip*, %struct.flchip** %6, align 8
  %16 = getelementptr inbounds %struct.flchip, %struct.flchip* %15, i32 0, i32 4
  %17 = load %struct.flchip_shared*, %struct.flchip_shared** %16, align 8
  %18 = icmp ne %struct.flchip_shared* %17, null
  br i1 %18, label %19, label %166

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FL_WRITING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FL_ERASING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %166

27:                                               ; preds = %23, %19
  %28 = load %struct.flchip*, %struct.flchip** %6, align 8
  %29 = getelementptr inbounds %struct.flchip, %struct.flchip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FL_SYNCING, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %166

33:                                               ; preds = %27
  %34 = load %struct.flchip*, %struct.flchip** %6, align 8
  %35 = getelementptr inbounds %struct.flchip, %struct.flchip* %34, i32 0, i32 4
  %36 = load %struct.flchip_shared*, %struct.flchip_shared** %35, align 8
  store %struct.flchip_shared* %36, %struct.flchip_shared** %9, align 8
  %37 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %38 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %41 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %40, i32 0, i32 2
  %42 = load %struct.flchip*, %struct.flchip** %41, align 8
  store %struct.flchip* %42, %struct.flchip** %10, align 8
  %43 = load %struct.flchip*, %struct.flchip** %10, align 8
  %44 = icmp ne %struct.flchip* %43, null
  br i1 %44, label %45, label %113

45:                                               ; preds = %33
  %46 = load %struct.flchip*, %struct.flchip** %10, align 8
  %47 = load %struct.flchip*, %struct.flchip** %6, align 8
  %48 = icmp ne %struct.flchip* %46, %47
  br i1 %48, label %49, label %113

49:                                               ; preds = %45
  %50 = load %struct.flchip*, %struct.flchip** %10, align 8
  %51 = getelementptr inbounds %struct.flchip, %struct.flchip* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @spin_trylock(i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %55 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %14

60:                                               ; preds = %49
  %61 = load %struct.flchip*, %struct.flchip** %6, align 8
  %62 = getelementptr inbounds %struct.flchip, %struct.flchip* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.map_info*, %struct.map_info** %5, align 8
  %66 = load %struct.flchip*, %struct.flchip** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @chip_ready(%struct.map_info* %65, %struct.flchip* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.flchip*, %struct.flchip** %6, align 8
  %70 = getelementptr inbounds %struct.flchip, %struct.flchip* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = load %struct.flchip*, %struct.flchip** %10, align 8
  %79 = getelementptr inbounds %struct.flchip, %struct.flchip* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @spin_unlock(i32* %80)
  br label %14

82:                                               ; preds = %60
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.flchip*, %struct.flchip** %10, align 8
  %87 = getelementptr inbounds %struct.flchip, %struct.flchip* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %178

91:                                               ; preds = %82
  %92 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %93 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.flchip*, %struct.flchip** %6, align 8
  %96 = getelementptr inbounds %struct.flchip, %struct.flchip* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FL_SYNCING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.map_info*, %struct.map_info** %5, align 8
  %102 = load %struct.flchip*, %struct.flchip** %10, align 8
  %103 = call i32 @put_chip(%struct.map_info* %101, %struct.flchip* %102)
  %104 = load %struct.flchip*, %struct.flchip** %10, align 8
  %105 = getelementptr inbounds %struct.flchip, %struct.flchip* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @spin_unlock(i32* %106)
  br label %14

108:                                              ; preds = %91
  %109 = load %struct.flchip*, %struct.flchip** %10, align 8
  %110 = getelementptr inbounds %struct.flchip, %struct.flchip* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @spin_unlock(i32* %111)
  br label %113

113:                                              ; preds = %108, %45, %33
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @FL_ERASING, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %151

117:                                              ; preds = %113
  %118 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %119 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %118, i32 0, i32 1
  %120 = load %struct.flchip*, %struct.flchip** %119, align 8
  %121 = icmp ne %struct.flchip* %120, null
  br i1 %121, label %122, label %151

122:                                              ; preds = %117
  %123 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %124 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %123, i32 0, i32 1
  %125 = load %struct.flchip*, %struct.flchip** %124, align 8
  %126 = getelementptr inbounds %struct.flchip, %struct.flchip* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FL_ERASING, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %122
  %131 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %132 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %131, i32 0, i32 0
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %135 = call i32 @set_current_state(i32 %134)
  %136 = load %struct.flchip*, %struct.flchip** %6, align 8
  %137 = getelementptr inbounds %struct.flchip, %struct.flchip* %136, i32 0, i32 3
  %138 = call i32 @add_wait_queue(i32* %137, i32* @wait)
  %139 = load %struct.flchip*, %struct.flchip** %6, align 8
  %140 = getelementptr inbounds %struct.flchip, %struct.flchip* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = call i32 (...) @schedule()
  %144 = load %struct.flchip*, %struct.flchip** %6, align 8
  %145 = getelementptr inbounds %struct.flchip, %struct.flchip* %144, i32 0, i32 3
  %146 = call i32 @remove_wait_queue(i32* %145, i32* @wait)
  %147 = load %struct.flchip*, %struct.flchip** %6, align 8
  %148 = getelementptr inbounds %struct.flchip, %struct.flchip* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @spin_lock(i32* %149)
  br label %14

151:                                              ; preds = %122, %117, %113
  %152 = load %struct.flchip*, %struct.flchip** %6, align 8
  %153 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %154 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %153, i32 0, i32 2
  store %struct.flchip* %152, %struct.flchip** %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @FL_ERASING, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.flchip*, %struct.flchip** %6, align 8
  %160 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %161 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %160, i32 0, i32 1
  store %struct.flchip* %159, %struct.flchip** %161, align 8
  br label %162

162:                                              ; preds = %158, %151
  %163 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %164 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %163, i32 0, i32 0
  %165 = call i32 @spin_unlock(i32* %164)
  br label %166

166:                                              ; preds = %162, %27, %23, %14
  %167 = load %struct.map_info*, %struct.map_info** %5, align 8
  %168 = load %struct.flchip*, %struct.flchip** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @chip_ready(%struct.map_info* %167, %struct.flchip* %168, i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %14

176:                                              ; preds = %166
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %176, %85
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @chip_ready(%struct.map_info*, %struct.flchip*, i32) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*) #1

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
