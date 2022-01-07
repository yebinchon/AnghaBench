; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setup_base_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setup_base_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32 }
%struct.hifn_base_command = type { i8*, i8*, i8*, i8* }

@HIFN_BASE_CMD_LENMASK_LO = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_SRCLEN_S = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_SRCLEN_M = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_DSTLEN_S = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_DSTLEN_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*, i32*, i32, i32, i32, i32)* @hifn_setup_base_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_base_command(%struct.hifn_device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hifn_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hifn_base_command*, align 8
  %14 = alloca i32*, align 8
  store %struct.hifn_device* %0, %struct.hifn_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  store i32* %15, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = bitcast i32* %16 to %struct.hifn_base_command*
  store %struct.hifn_base_command* %17, %struct.hifn_base_command** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i8* @__cpu_to_le16(i32 %18)
  %20 = load %struct.hifn_base_command*, %struct.hifn_base_command** %13, align 8
  %21 = getelementptr inbounds %struct.hifn_base_command, %struct.hifn_base_command* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @HIFN_BASE_CMD_LENMASK_LO, align 4
  %24 = and i32 %22, %23
  %25 = call i8* @__cpu_to_le16(i32 %24)
  %26 = load %struct.hifn_base_command*, %struct.hifn_base_command** %13, align 8
  %27 = getelementptr inbounds %struct.hifn_base_command, %struct.hifn_base_command* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @HIFN_BASE_CMD_LENMASK_LO, align 4
  %30 = and i32 %28, %29
  %31 = call i8* @__cpu_to_le16(i32 %30)
  %32 = load %struct.hifn_base_command*, %struct.hifn_base_command** %13, align 8
  %33 = getelementptr inbounds %struct.hifn_base_command, %struct.hifn_base_command* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = lshr i32 %34, 16
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = lshr i32 %36, 16
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @HIFN_BASE_CMD_SRCLEN_S, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @HIFN_BASE_CMD_SRCLEN_M, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %38, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @HIFN_BASE_CMD_DSTLEN_S, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @HIFN_BASE_CMD_DSTLEN_M, align 4
  %49 = and i32 %47, %48
  %50 = or i32 %44, %49
  %51 = call i8* @__cpu_to_le16(i32 %50)
  %52 = load %struct.hifn_base_command*, %struct.hifn_base_command** %13, align 8
  %53 = getelementptr inbounds %struct.hifn_base_command, %struct.hifn_base_command* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret i32 32
}

declare dso_local i8* @__cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
