; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_inbuf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_inbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, i32*, %struct.bc_state*, %struct.cardstate*, i64, i64 }
%struct.bc_state = type { i32 }
%struct.cardstate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inbuf_t*, %struct.bc_state*, %struct.cardstate*, i32)* @gigaset_inbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_inbuf_init(%struct.inbuf_t* %0, %struct.bc_state* %1, %struct.cardstate* %2, i32 %3) #0 {
  %5 = alloca %struct.inbuf_t*, align 8
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca i32, align 4
  store %struct.inbuf_t* %0, %struct.inbuf_t** %5, align 8
  store %struct.bc_state* %1, %struct.bc_state** %6, align 8
  store %struct.cardstate* %2, %struct.cardstate** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %10 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %12 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %14 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %15 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %14, i32 0, i32 3
  store %struct.cardstate* %13, %struct.cardstate** %15, align 8
  %16 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %17 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %18 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %17, i32 0, i32 2
  store %struct.bc_state* %16, %struct.bc_state** %18, align 8
  %19 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %20 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %23 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
