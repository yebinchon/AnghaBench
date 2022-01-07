; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_spu_restore.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_spu_restore.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8** }

@SPU_RdSigNotify1 = common dso_local global i32 0, align 4
@SPU_RdSigNotify2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @SPU_RdSigNotify1, align 4
  %4 = call i8* @spu_readch(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %4, i8** %7, align 8
  %8 = load i32, i32* @SPU_RdSigNotify2, align 4
  %9 = call i8* @spu_readch(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* %9, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = call i32 @fetch_regs_from_mem(i8** %14)
  %16 = call i32 (...) @set_event_mask()
  %17 = call i32 (...) @set_tag_mask()
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = call i32 @build_dma_list(i8** %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = call i32 @restore_upper_240kb(i8** %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = call i32 @enqueue_putllc(i8** %25)
  %27 = call i32 (...) @set_tag_update()
  %28 = call i32 (...) @read_tag_status()
  %29 = call i32 (...) @restore_decr()
  %30 = call i32 (...) @read_llar_status()
  %31 = call i32 (...) @write_ppu_mb()
  %32 = call i32 (...) @write_ppuint_mb()
  %33 = call i32 (...) @restore_fpcr()
  %34 = call i32 (...) @restore_srr0()
  %35 = call i32 (...) @restore_event_mask()
  %36 = call i32 (...) @restore_tag_mask()
  %37 = call i32 (...) @restore_complete()
  ret i32 0
}

declare dso_local i8* @spu_readch(i32) #1

declare dso_local i32 @fetch_regs_from_mem(i8**) #1

declare dso_local i32 @set_event_mask(...) #1

declare dso_local i32 @set_tag_mask(...) #1

declare dso_local i32 @build_dma_list(i8**) #1

declare dso_local i32 @restore_upper_240kb(i8**) #1

declare dso_local i32 @enqueue_putllc(i8**) #1

declare dso_local i32 @set_tag_update(...) #1

declare dso_local i32 @read_tag_status(...) #1

declare dso_local i32 @restore_decr(...) #1

declare dso_local i32 @read_llar_status(...) #1

declare dso_local i32 @write_ppu_mb(...) #1

declare dso_local i32 @write_ppuint_mb(...) #1

declare dso_local i32 @restore_fpcr(...) #1

declare dso_local i32 @restore_srr0(...) #1

declare dso_local i32 @restore_event_mask(...) #1

declare dso_local i32 @restore_tag_mask(...) #1

declare dso_local i32 @restore_complete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
