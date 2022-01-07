; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16 }

@CONNECT_NORMAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ppa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppa_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  store i16 %8, i16* %5, align 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @ppa_disconnect(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @CONNECT_NORMAL, align 4
  %13 = call i32 @ppa_connect(%struct.TYPE_6__* %11, i32 %12)
  store i32 2, i32* %4, align 4
  %14 = load i16, i16* %5, align 2
  %15 = call i32 @w_ctr(i16 zeroext %14, i32 14)
  %16 = load i16, i16* %5, align 2
  %17 = call i32 @r_str(i16 zeroext %16)
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i16, i16* %5, align 2
  %25 = call i32 @w_ctr(i16 zeroext %24, i32 12)
  %26 = load i16, i16* %5, align 2
  %27 = call i32 @r_str(i16 zeroext %26)
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i16, i16* %5, align 2
  %38 = call i32 @ppa_reset_pulse(i16 zeroext %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = call i32 @udelay(i32 1000)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 @ppa_disconnect(%struct.TYPE_6__* %41)
  %43 = call i32 @udelay(i32 1000)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @device_check(%struct.TYPE_6__* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ppa_disconnect(%struct.TYPE_6__*) #1

declare dso_local i32 @ppa_connect(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @ppa_reset_pulse(i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @device_check(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
