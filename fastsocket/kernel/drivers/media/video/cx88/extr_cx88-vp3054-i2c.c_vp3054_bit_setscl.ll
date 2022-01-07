; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-vp3054-i2c.c_vp3054_bit_setscl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-vp3054-i2c.c_vp3054_bit_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.vp3054_i2c_state*, %struct.cx88_core* }
%struct.vp3054_i2c_state = type { i32 }
%struct.cx88_core = type { i32 }

@MO_GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vp3054_bit_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp3054_bit_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx8802_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca %struct.vp3054_i2c_state*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.cx8802_dev*
  store %struct.cx8802_dev* %9, %struct.cx8802_dev** %5, align 8
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %11 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %10, i32 0, i32 1
  %12 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  store %struct.cx88_core* %12, %struct.cx88_core** %6, align 8
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %13, i32 0, i32 0
  %15 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %14, align 8
  store %struct.vp3054_i2c_state* %15, %struct.vp3054_i2c_state** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %7, align 8
  %20 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %7, align 8
  %24 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -257
  store i32 %26, i32* %24, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %7, align 8
  %29 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -2
  store i32 %31, i32* %29, align 4
  %32 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %7, align 8
  %33 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 256
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %18
  %37 = load i32, i32* @MO_GP0_IO, align 4
  %38 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %7, align 8
  %39 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 65536, %40
  %42 = call i32 @cx_write(i32 %37, i32 %41)
  %43 = load i32, i32* @MO_GP0_IO, align 4
  %44 = call i32 @cx_read(i32 %43)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
