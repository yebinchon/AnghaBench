; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_init_local_csr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_init_local_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32, i32, i32 }

@csr1212_init_local_csr.mr_map = internal constant [4 x i32] [i32 4, i32 64, i32 1024, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csr1212_init_local_csr(%struct.csr1212_csr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.csr1212_csr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -4
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* @csr1212_init_local_csr.mr_map, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %15 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %17 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %21 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32 %18, i32* %19, i32 %22)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
