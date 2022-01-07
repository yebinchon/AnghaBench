; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_efuse_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32* }

@RT3290 = common dso_local global i32 0, align 4
@EFUSE_CTRL_3290 = common dso_local global i32 0, align 4
@EFUSE_DATA0_3290 = common dso_local global i32 0, align 4
@EFUSE_DATA1_3290 = common dso_local global i32 0, align 4
@EFUSE_DATA2_3290 = common dso_local global i32 0, align 4
@EFUSE_DATA3_3290 = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i32 0, align 4
@EFUSE_DATA0 = common dso_local global i32 0, align 4
@EFUSE_DATA1 = common dso_local global i32 0, align 4
@EFUSE_DATA2 = common dso_local global i32 0, align 4
@EFUSE_DATA3 = common dso_local global i32 0, align 4
@EFUSE_CTRL_ADDRESS_IN = common dso_local global i32 0, align 4
@EFUSE_CTRL_MODE = common dso_local global i32 0, align 4
@EFUSE_CTRL_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2800_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_efuse_read(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @RT3290, align 4
  %13 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @EFUSE_CTRL_3290, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @EFUSE_DATA0_3290, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @EFUSE_DATA1_3290, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @EFUSE_DATA2_3290, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @EFUSE_DATA3_3290, align 4
  store i32 %20, i32* %10, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @EFUSE_CTRL, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @EFUSE_DATA0, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @EFUSE_DATA1, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @EFUSE_DATA2, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @EFUSE_DATA3, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rt2800_register_read_lock(%struct.rt2x00_dev* %31, i32 %32, i32* %5)
  %34 = load i32, i32* @EFUSE_CTRL_ADDRESS_IN, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %5, i32 %34, i32 %35)
  %37 = load i32, i32* @EFUSE_CTRL_MODE, align 4
  %38 = call i32 @rt2x00_set_field32(i32* %5, i32 %37, i32 0)
  %39 = load i32, i32* @EFUSE_CTRL_KICK, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %5, i32 %39, i32 1)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @EFUSE_CTRL_KICK, align 4
  %48 = call i32 @rt2800_regbusy_read(%struct.rt2x00_dev* %45, i32 %46, i32 %47, i32* %5)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @rt2800_register_read_lock(%struct.rt2x00_dev* %49, i32 %50, i32* %5)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @rt2800_register_read_lock(%struct.rt2x00_dev* %60, i32 %61, i32* %5)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 2
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %71, align 4
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @rt2800_register_read_lock(%struct.rt2x00_dev* %72, i32 %73, i32* %5)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rt2800_register_read_lock(%struct.rt2x00_dev* %84, i32 %85, i32* %5)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @cpu_to_le32(i32 %87)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %90 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %92, 6
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %88, i32* %95, align 4
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  ret void
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rt2800_register_read_lock(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write_lock(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_regbusy_read(%struct.rt2x00_dev*, i32, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
