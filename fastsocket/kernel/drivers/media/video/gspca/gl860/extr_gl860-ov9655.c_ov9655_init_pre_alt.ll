; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov9655.c_ov9655_init_pre_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov9655.c_ov9655_init_pre_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@tbl_commmon = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @ov9655_init_pre_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9655_init_pre_alt(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 4
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 -1, i32* %11, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @tbl_commmon, align 4
  %14 = load i32, i32* @tbl_commmon, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @fetch_validx(%struct.gspca_dev* %12, i32 %13, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @ov9655_init_post_alt(%struct.gspca_dev* %17)
  ret i32 0
}

declare dso_local i32 @fetch_validx(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ov9655_init_post_alt(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
