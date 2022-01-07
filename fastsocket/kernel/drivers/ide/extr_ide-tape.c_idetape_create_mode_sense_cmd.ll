; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_create_mode_sense_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_create_mode_sense_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_atapi_pc = type { i32*, i32 }

@MODE_SENSE = common dso_local global i32 0, align 4
@IDETAPE_BLOCK_DESCRIPTOR = common dso_local global i32 0, align 4
@IDETAPE_CAPABILITIES_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_atapi_pc*, i32)* @idetape_create_mode_sense_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idetape_create_mode_sense_cmd(%struct.ide_atapi_pc* %0, i32 %1) #0 {
  %3 = alloca %struct.ide_atapi_pc*, align 8
  %4 = alloca i32, align 4
  store %struct.ide_atapi_pc* %0, %struct.ide_atapi_pc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %6 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %5)
  %7 = load i32, i32* @MODE_SENSE, align 4
  %8 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %9 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IDETAPE_BLOCK_DESCRIPTOR, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %17 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 8, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %23 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %27 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %31 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 255, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IDETAPE_BLOCK_DESCRIPTOR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %39 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %38, i32 0, i32 1
  store i32 12, i32* %39, align 8
  br label %51

40:                                               ; preds = %20
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IDETAPE_CAPABILITIES_PAGE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %46 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %45, i32 0, i32 1
  store i32 24, i32* %46, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %3, align 8
  %49 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %48, i32 0, i32 1
  store i32 50, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
