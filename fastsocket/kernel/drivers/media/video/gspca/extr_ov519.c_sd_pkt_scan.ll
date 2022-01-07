; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %7, align 8
  %10 = load %struct.sd*, %struct.sd** %7, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %38 [
    i32 134, label %13
    i32 133, label %13
    i32 132, label %18
    i32 131, label %18
    i32 130, label %23
    i32 129, label %28
    i32 128, label %33
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ov511_pkt_scan(%struct.gspca_dev* %14, i32* %15, i32 %16)
  br label %38

18:                                               ; preds = %3, %3
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ov518_pkt_scan(%struct.gspca_dev* %19, i32* %20, i32 %21)
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ov519_pkt_scan(%struct.gspca_dev* %24, i32* %25, i32 %26)
  br label %38

28:                                               ; preds = %3
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ovfx2_pkt_scan(%struct.gspca_dev* %29, i32* %30, i32 %31)
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @w9968cf_pkt_scan(%struct.gspca_dev* %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %3, %33, %28, %23, %18, %13
  ret void
}

declare dso_local i32 @ov511_pkt_scan(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @ov518_pkt_scan(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @ov519_pkt_scan(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @ovfx2_pkt_scan(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @w9968cf_pkt_scan(%struct.gspca_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
