; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_create_space_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_create_space_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_atapi_pc = type { i32, i64* }

@SPACE = common dso_local global i64 0, align 8
@PC_FLAG_WAIT_FOR_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_atapi_pc*, i32, i64)* @idetape_create_space_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idetape_create_space_cmd(%struct.ide_atapi_pc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ide_atapi_pc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ide_atapi_pc* %0, %struct.ide_atapi_pc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %8 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %7)
  %9 = load i64, i64* @SPACE, align 8
  %10 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %11 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %9, i64* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %17 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = bitcast i64* %19 to i32*
  %21 = call i32 @put_unaligned(i32 %15, i32* %20)
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %24 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 %22, i64* %26, align 8
  %27 = load i32, i32* @PC_FLAG_WAIT_FOR_DSC, align 4
  %28 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %29 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
