; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cerr-sb1.c_dc_state_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cerr-sb1.c_dc_state_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32, i8* }

@dc_states = common dso_local global %struct.dc_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @dc_state_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dc_state_str(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.dc_state*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load %struct.dc_state*, %struct.dc_state** @dc_states, align 8
  store %struct.dc_state* %4, %struct.dc_state** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %7 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 255
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %12 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %21

18:                                               ; preds = %10
  %19 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %20 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %19, i32 1
  store %struct.dc_state* %20, %struct.dc_state** %3, align 8
  br label %5

21:                                               ; preds = %17, %5
  %22 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %23 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
