; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_inval_cache_and_wait_for_operation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_inval_cache_and_wait_for_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32 }
%struct.flchip = type { i32, i64, i64, i32, i32 }

@FL_STATUS = common dso_local global i8* null, align 8
@ETIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@FL_ERASING = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32, i32, i32)* @inval_cache_and_wait_for_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inval_cache_and_wait_for_operation(%struct.map_info* %0, %struct.flchip* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_info*, align 8
  %10 = alloca %struct.flchip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfi_private*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %9, align 8
  store %struct.flchip* %1, %struct.flchip** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.map_info*, %struct.map_info** %9, align 8
  %24 = getelementptr inbounds %struct.map_info, %struct.map_info* %23, i32 0, i32 0
  %25 = load %struct.cfi_private*, %struct.cfi_private** %24, align 8
  store %struct.cfi_private* %25, %struct.cfi_private** %16, align 8
  %26 = call i32 @CMD(i32 128)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.flchip*, %struct.flchip** %10, align 8
  %28 = getelementptr inbounds %struct.flchip, %struct.flchip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %19, align 4
  %30 = load %struct.flchip*, %struct.flchip** %10, align 8
  %31 = getelementptr inbounds %struct.flchip, %struct.flchip* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @spin_unlock(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %7
  %37 = load %struct.map_info*, %struct.map_info** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @INVALIDATE_CACHED_RANGE(%struct.map_info* %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %7
  %42 = load %struct.flchip*, %struct.flchip** %10, align 8
  %43 = getelementptr inbounds %struct.flchip, %struct.flchip* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @spin_lock(i32 %44)
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 500000, i32* %20, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %14, align 4
  %53 = udiv i32 %52, 2
  store i32 %53, i32* %21, align 4
  br label %54

54:                                               ; preds = %160, %50
  %55 = load %struct.map_info*, %struct.map_info** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @map_read(%struct.map_info* %55, i64 %56)
  store i32 %57, i32* %17, align 4
  %58 = load %struct.map_info*, %struct.map_info** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = call i64 @map_word_andequal(%struct.map_info* %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %161

65:                                               ; preds = %54
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load %struct.map_info*, %struct.map_info** %9, align 8
  %70 = call i32 @CMD(i32 112)
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @map_write(%struct.map_info* %69, i32 %70, i64 %71)
  %73 = load i8*, i8** @FL_STATUS, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.flchip*, %struct.flchip** %10, align 8
  %76 = getelementptr inbounds %struct.flchip, %struct.flchip* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @ETIME, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %166

79:                                               ; preds = %65
  %80 = load %struct.flchip*, %struct.flchip** %10, align 8
  %81 = getelementptr inbounds %struct.flchip, %struct.flchip* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @spin_unlock(i32 %82)
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* @HZ, align 4
  %86 = sdiv i32 1000000, %85
  %87 = icmp uge i32 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load i32, i32* %21, align 4
  %90 = udiv i32 %89, 1000
  %91 = call i32 @msleep(i32 %90)
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %20, align 4
  %94 = sub i32 %93, %92
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* @HZ, align 4
  %96 = sdiv i32 1000000, %95
  store i32 %96, i32* %21, align 4
  br label %102

97:                                               ; preds = %79
  %98 = call i32 @udelay(i32 1)
  %99 = call i32 (...) @cond_resched()
  %100 = load i32, i32* %20, align 4
  %101 = add i32 %100, -1
  store i32 %101, i32* %20, align 4
  br label %102

102:                                              ; preds = %97, %88
  %103 = load %struct.flchip*, %struct.flchip** %10, align 8
  %104 = getelementptr inbounds %struct.flchip, %struct.flchip* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @spin_lock(i32 %105)
  br label %107

107:                                              ; preds = %113, %102
  %108 = load %struct.flchip*, %struct.flchip** %10, align 8
  %109 = getelementptr inbounds %struct.flchip, %struct.flchip* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %107
  %114 = load i32, i32* @wait, align 4
  %115 = load i32, i32* @current, align 4
  %116 = call i32 @DECLARE_WAITQUEUE(i32 %114, i32 %115)
  %117 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %118 = call i32 @set_current_state(i32 %117)
  %119 = load %struct.flchip*, %struct.flchip** %10, align 8
  %120 = getelementptr inbounds %struct.flchip, %struct.flchip* %119, i32 0, i32 4
  %121 = call i32 @add_wait_queue(i32* %120, i32* @wait)
  %122 = load %struct.flchip*, %struct.flchip** %10, align 8
  %123 = getelementptr inbounds %struct.flchip, %struct.flchip* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @spin_unlock(i32 %124)
  %126 = call i32 (...) @schedule()
  %127 = load %struct.flchip*, %struct.flchip** %10, align 8
  %128 = getelementptr inbounds %struct.flchip, %struct.flchip* %127, i32 0, i32 4
  %129 = call i32 @remove_wait_queue(i32* %128, i32* @wait)
  %130 = load %struct.flchip*, %struct.flchip** %10, align 8
  %131 = getelementptr inbounds %struct.flchip, %struct.flchip* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @spin_lock(i32 %132)
  br label %107

134:                                              ; preds = %107
  %135 = load %struct.flchip*, %struct.flchip** %10, align 8
  %136 = getelementptr inbounds %struct.flchip, %struct.flchip* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* @FL_ERASING, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %22, align 4
  store i32 %144, i32* %20, align 4
  %145 = load %struct.flchip*, %struct.flchip** %10, align 8
  %146 = getelementptr inbounds %struct.flchip, %struct.flchip* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %139, %134
  %148 = load %struct.flchip*, %struct.flchip** %10, align 8
  %149 = getelementptr inbounds %struct.flchip, %struct.flchip* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* @FL_WRITING, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* %22, align 4
  store i32 %157, i32* %20, align 4
  %158 = load %struct.flchip*, %struct.flchip** %10, align 8
  %159 = getelementptr inbounds %struct.flchip, %struct.flchip* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %152, %147
  br label %54

161:                                              ; preds = %64
  %162 = load i8*, i8** @FL_STATUS, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.flchip*, %struct.flchip** %10, align 8
  %165 = getelementptr inbounds %struct.flchip, %struct.flchip* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %68
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @INVALIDATE_CACHED_RANGE(%struct.map_info*, i64, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @map_read(%struct.map_info*, i64) #1

declare dso_local i64 @map_word_andequal(%struct.map_info*, i32, i32, i32) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

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
