; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_uninitGPIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_uninitGPIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@VRT_SET_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uninitGPIO(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %4 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false)
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = call i32 @cx231xx_capture_start(%struct.cx231xx* %5, i32 0, i32 2)
  %7 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %8 = call i32 @verve_write_byte(%struct.cx231xx* %7, i32 7, i32 20)
  %9 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %10 = load i32, i32* @VRT_SET_REGISTER, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %12 = call i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %9, i32 %10, i32 104, i32* %11, i32 4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #2

declare dso_local i32 @verve_write_byte(%struct.cx231xx*, i32, i32) #2

declare dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
