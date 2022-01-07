; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_D_L1L2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_D_L1L2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { i32 }
%struct.hisax_if = type { i32 (%struct.hisax_if*, i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_adapter*, i32, i8*)* @D_L1L2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @D_L1L2(%struct.st5481_adapter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.st5481_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hisax_if*, align 8
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.st5481_adapter*, %struct.st5481_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.hisax_if*
  store %struct.hisax_if* %10, %struct.hisax_if** %7, align 8
  %11 = load %struct.hisax_if*, %struct.hisax_if** %7, align 8
  %12 = getelementptr inbounds %struct.hisax_if, %struct.hisax_if* %11, i32 0, i32 0
  %13 = load i32 (%struct.hisax_if*, i32, i8*)*, i32 (%struct.hisax_if*, i32, i8*)** %12, align 8
  %14 = load %struct.hisax_if*, %struct.hisax_if** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 %13(%struct.hisax_if* %14, i32 %15, i8* %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
