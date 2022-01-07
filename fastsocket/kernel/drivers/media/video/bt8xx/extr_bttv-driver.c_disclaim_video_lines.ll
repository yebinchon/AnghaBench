; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_disclaim_video_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_disclaim_video_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_tvnorm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.bttv = type { i64, i64 }

@bttv_tvnorms = common dso_local global %struct.bttv_tvnorm* null, align 8
@BT848_E_CROP = common dso_local global i32 0, align 4
@BT848_E_VDELAY_LO = common dso_local global i32 0, align 4
@BT848_O_CROP = common dso_local global i32 0, align 4
@BT848_O_VDELAY_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @disclaim_video_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disclaim_video_lines(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.bttv_tvnorm*, align 8
  %4 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %5 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %6 = load %struct.bttv*, %struct.bttv** %2, align 8
  %7 = getelementptr inbounds %struct.bttv, %struct.bttv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %5, i64 %8
  store %struct.bttv_tvnorm* %9, %struct.bttv_tvnorm** %3, align 8
  %10 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %3, align 8
  %11 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %3, align 8
  %16 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @BT848_E_CROP, align 4
  %24 = call i32 @btread(i32 %23)
  %25 = or i32 %24, 192
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BT848_E_CROP, align 4
  %28 = call i32 @btwrite(i32 %26, i32 %27)
  %29 = load i32, i32* @BT848_E_VDELAY_LO, align 4
  %30 = call i32 @btwrite(i32 254, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @BT848_O_CROP, align 4
  %33 = call i32 @btwrite(i32 %31, i32 %32)
  %34 = load i32, i32* @BT848_O_VDELAY_LO, align 4
  %35 = call i32 @btwrite(i32 254, i32 %34)
  ret void
}

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
