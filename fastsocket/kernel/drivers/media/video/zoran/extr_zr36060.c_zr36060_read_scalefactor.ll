; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_read_scalefactor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_read_scalefactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr36060 = type { i32 }

@ZR060_SF_HI = common dso_local global i32 0, align 4
@ZR060_SF_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zr36060*)* @zr36060_read_scalefactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36060_read_scalefactor(%struct.zr36060* %0) #0 {
  %2 = alloca %struct.zr36060*, align 8
  store %struct.zr36060* %0, %struct.zr36060** %2, align 8
  %3 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %4 = load i32, i32* @ZR060_SF_HI, align 4
  %5 = call i32 @zr36060_read(%struct.zr36060* %3, i32 %4)
  %6 = shl i32 %5, 8
  %7 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %8 = load i32, i32* @ZR060_SF_LO, align 4
  %9 = call i32 @zr36060_read(%struct.zr36060* %7, i32 %8)
  %10 = and i32 %9, 255
  %11 = or i32 %6, %10
  %12 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %13 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %15 = call i32 @zr36060_read(%struct.zr36060* %14, i32 0)
  %16 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %17 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

declare dso_local i32 @zr36060_read(%struct.zr36060*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
