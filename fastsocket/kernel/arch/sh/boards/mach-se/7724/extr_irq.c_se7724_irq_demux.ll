; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7724/extr_irq.c_se7724_irq_demux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7724/extr_irq.c_se7724_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.fpga_irq = type { i32, i16, i32 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @se7724_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se7724_irq_demux(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.fpga_irq, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.irq_desc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call { i64, i32 } @get_fpga_irq(i32 %10)
  store { i64, i32 } %11, { i64, i32 }* %6, align 8
  %12 = bitcast { i64, i32 }* %6 to i8*
  %13 = bitcast %struct.fpga_irq* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 8 %12, i64 12, i1 false)
  %14 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %5, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call zeroext i16 @ctrl_inw(i32 %15)
  store i16 %16, i16* %7, align 2
  %17 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %5, i32 0, i32 1
  %20 = load i16, i16* %19, align 4
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %7, align 2
  br label %26

26:                                               ; preds = %42, %2
  %27 = load i16, i16* %7, align 2
  %28 = icmp ne i16 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i16, i16* %7, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i64 %37
  store %struct.irq_desc* %38, %struct.irq_desc** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %41 = call i32 @handle_level_irq(i32 %39, %struct.irq_desc* %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i16, i16* %7, align 2
  %44 = zext i16 %43 to i32
  %45 = ashr i32 %44, 1
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %7, align 2
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %26
  ret void
}

declare dso_local { i64, i32 } @get_fpga_irq(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local zeroext i16 @ctrl_inw(i32) #1

declare dso_local i32 @handle_level_irq(i32, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
