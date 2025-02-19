; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_zcp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_zcp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ZCP_RAM_DATA0 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA1 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA2 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA3 = common dso_local global i32 0, align 4
@ZCP_RAM_DATA4 = common dso_local global i32 0, align 4
@ZCP_RAM_BE = common dso_local global i32 0, align 4
@ZCP_RAM_BE_VAL = common dso_local global i32 0, align 4
@ZCP_RAM_ACC = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_WRITE = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_ZFCID_SHIFT = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_RAM_SEL_SHIFT = common dso_local global i32 0, align 4
@ZCP_RAM_ACC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i32*)* @niu_zcp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_zcp_write(%struct.niu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @ZCP_RAM_DATA0, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nw64(i32 %7, i32 %10)
  %12 = load i32, i32* @ZCP_RAM_DATA1, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nw64(i32 %12, i32 %15)
  %17 = load i32, i32* @ZCP_RAM_DATA2, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nw64(i32 %17, i32 %20)
  %22 = load i32, i32* @ZCP_RAM_DATA3, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nw64(i32 %22, i32 %25)
  %27 = load i32, i32* @ZCP_RAM_DATA4, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nw64(i32 %27, i32 %30)
  %32 = load i32, i32* @ZCP_RAM_BE, align 4
  %33 = load i32, i32* @ZCP_RAM_BE_VAL, align 4
  %34 = call i32 @nw64(i32 %32, i32 %33)
  %35 = load i32, i32* @ZCP_RAM_ACC, align 4
  %36 = load i32, i32* @ZCP_RAM_ACC_WRITE, align 4
  %37 = load i32, i32* @ZCP_RAM_ACC_ZFCID_SHIFT, align 4
  %38 = shl i32 0, %37
  %39 = or i32 %36, %38
  %40 = load %struct.niu*, %struct.niu** %4, align 8
  %41 = getelementptr inbounds %struct.niu, %struct.niu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ZCP_RAM_SEL_CFIFO(i32 %42)
  %44 = load i32, i32* @ZCP_RAM_ACC_RAM_SEL_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %39, %45
  %47 = call i32 @nw64(i32 %35, i32 %46)
  %48 = load %struct.niu*, %struct.niu** %4, align 8
  %49 = load i32, i32* @ZCP_RAM_ACC, align 4
  %50 = load i32, i32* @ZCP_RAM_ACC_BUSY, align 4
  %51 = call i32 @niu_wait_bits_clear(%struct.niu* %48, i32 %49, i32 %50, i32 1000, i32 100)
  ret i32 %51
}

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @ZCP_RAM_SEL_CFIFO(i32) #1

declare dso_local i32 @niu_wait_bits_clear(%struct.niu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
