; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load %struct.sd*, %struct.sd** %2, align 8
  %4 = call i32 @reg_w(%struct.sd* %3, i32 0, i32 65280)
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = call i32 @reg_w(%struct.sd* %5, i32 0, i32 48919)
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = call i32 @reg_w(%struct.sd* %7, i32 0, i32 48912)
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = call i32 @reg_w(%struct.sd* %9, i32 1, i32 16)
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = call i32 @reg_w(%struct.sd* %11, i32 1, i32 0)
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = call i32 @reg_w(%struct.sd* %13, i32 1, i32 16)
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = call i32 @reg_w(%struct.sd* %15, i32 1, i32 48)
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
