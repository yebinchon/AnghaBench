; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_make_room.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_make_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i32 }

@RAW3215_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAW3215_FROZEN = common dso_local global i32 0, align 4
@RAW3215_FLUSHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*, i32)* @raw3215_make_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_make_room(%struct.raw3215_info* %0, i32 %1) #0 {
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3215_info* %0, %struct.raw3215_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %47, %20, %2
  %6 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %7 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %8 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 %6, %9
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %5
  %14 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %15 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RAW3215_FROZEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %22 = call i32 @raw3215_drop_line(%struct.raw3215_info* %21)
  br label %5

23:                                               ; preds = %13
  %24 = load i32, i32* @RAW3215_FLUSHING, align 4
  %25 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %26 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %30 = call i32 @raw3215_mk_write_req(%struct.raw3215_info* %29)
  %31 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %32 = call i32 @raw3215_try_io(%struct.raw3215_info* %31)
  %33 = load i32, i32* @RAW3215_FLUSHING, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %36 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %40 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %41 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %39, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %59

47:                                               ; preds = %23
  %48 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %49 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_ccwdev_lock(i32 %50)
  %52 = call i32 @spin_unlock(i32 %51)
  %53 = call i32 @udelay(i32 100)
  %54 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %55 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @get_ccwdev_lock(i32 %56)
  %58 = call i32 @spin_lock(i32 %57)
  br label %5

59:                                               ; preds = %46, %5
  ret void
}

declare dso_local i32 @raw3215_drop_line(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_mk_write_req(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
