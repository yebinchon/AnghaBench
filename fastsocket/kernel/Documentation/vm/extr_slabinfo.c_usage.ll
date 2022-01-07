; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1169 x i8] c"slabinfo 5/7/2007. (c) 2007 sgi.\0A\0Aslabinfo [-ahnpvtsz] [-d debugopts] [slab-regexp]\0A-a|--aliases           Show aliases\0A-A|--activity          Most active slabs first\0A-d<options>|--debug=<options> Set/Clear Debug options\0A-D|--display-active    Switch line format to activity\0A-e|--empty             Show empty slabs\0A-f|--first-alias       Show first alias\0A-h|--help              Show usage information\0A-i|--inverted          Inverted list\0A-l|--slabs             Show slabs\0A-n|--numa              Show NUMA information\0A-o|--ops\09\09Show kmem_cache_ops\0A-s|--shrink            Shrink slabs\0A-r|--report\09\09Detailed report on single slabs\0A-S|--Size              Sort by size\0A-t|--tracking          Show alloc/free information\0A-T|--Totals            Show summary information\0A-v|--validate          Validate slabs\0A-z|--zero              Include empty slabs\0A-1|--1ref              Single reference\0A\0AValid debug options (FZPUT may be combined)\0Aa / A          Switch on all debug options (=FZUP)\0A-              Switch off all debug options\0Af / F          Sanity Checks (SLAB_DEBUG_FREE)\0Az / Z          Redzoning\0Ap / P          Poisoning\0Au / U          Tracking\0At / T          Tracing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([1169 x i8], [1169 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
