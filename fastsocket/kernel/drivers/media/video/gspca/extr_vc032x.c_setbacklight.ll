; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_setbacklight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_setbacklight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbacklight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbacklight(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 4
  %12 = or i32 %11, 15
  store i32 %12, i32* %5, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @i2c_write(%struct.gspca_dev* %13, i32 170, i32* %5, i32 1)
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 12, %17
  %19 = add nsw i32 613, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @i2c_write(%struct.gspca_dev* %22, i32 196, i32* %5, i32 1)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @i2c_write(%struct.gspca_dev* %25, i32 197, i32* %5, i32 1)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 12, %29
  %31 = sub nsw i32 1093, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %5, align 4
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @i2c_write(%struct.gspca_dev* %34, i32 198, i32* %5, i32 1)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @i2c_write(%struct.gspca_dev* %37, i32 199, i32* %5, i32 1)
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 9, %41
  %43 = add nsw i32 342, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 8
  store i32 %45, i32* %5, align 4
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @i2c_write(%struct.gspca_dev* %46, i32 200, i32* %5, i32 1)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %5, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @i2c_write(%struct.gspca_dev* %49, i32 201, i32* %5, i32 1)
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 9, %53
  %55 = sub nsw i32 702, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %5, align 4
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @i2c_write(%struct.gspca_dev* %58, i32 202, i32* %5, i32 1)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = call i32 @i2c_write(%struct.gspca_dev* %61, i32 203, i32* %5, i32 1)
  ret void
}

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
