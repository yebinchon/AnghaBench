; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_parse_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_parse_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_txqueue = type { %struct.b43_pio_txpacket* }
%struct.b43_pio_txpacket = type { i32 }
%struct.b43_wldev = type { %struct.b43_pio }
%struct.b43_pio = type { %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_pio_txqueue* (%struct.b43_wldev*, i32, %struct.b43_pio_txpacket**)* @parse_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_pio_txqueue* @parse_cookie(%struct.b43_wldev* %0, i32 %1, %struct.b43_pio_txpacket** %2) #0 {
  %4 = alloca %struct.b43_pio_txqueue*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_pio_txpacket**, align 8
  %8 = alloca %struct.b43_pio*, align 8
  %9 = alloca %struct.b43_pio_txqueue*, align 8
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.b43_pio_txpacket** %2, %struct.b43_pio_txpacket*** %7, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  store %struct.b43_pio* %12, %struct.b43_pio** %8, align 8
  store %struct.b43_pio_txqueue* null, %struct.b43_pio_txqueue** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 61440
  switch i32 %14, label %35 [
    i32 4096, label %15
    i32 8192, label %19
    i32 12288, label %23
    i32 16384, label %27
    i32 20480, label %31
  ]

15:                                               ; preds = %3
  %16 = load %struct.b43_pio*, %struct.b43_pio** %8, align 8
  %17 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %16, i32 0, i32 4
  %18 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %17, align 8
  store %struct.b43_pio_txqueue* %18, %struct.b43_pio_txqueue** %9, align 8
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.b43_pio*, %struct.b43_pio** %8, align 8
  %21 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %20, i32 0, i32 3
  %22 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %21, align 8
  store %struct.b43_pio_txqueue* %22, %struct.b43_pio_txqueue** %9, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.b43_pio*, %struct.b43_pio** %8, align 8
  %25 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %24, i32 0, i32 2
  %26 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %25, align 8
  store %struct.b43_pio_txqueue* %26, %struct.b43_pio_txqueue** %9, align 8
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.b43_pio*, %struct.b43_pio** %8, align 8
  %29 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %28, i32 0, i32 1
  %30 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %29, align 8
  store %struct.b43_pio_txqueue* %30, %struct.b43_pio_txqueue** %9, align 8
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.b43_pio*, %struct.b43_pio** %8, align 8
  %33 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %32, i32 0, i32 0
  %34 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %33, align 8
  store %struct.b43_pio_txqueue* %34, %struct.b43_pio_txqueue** %9, align 8
  br label %35

35:                                               ; preds = %3, %31, %27, %23, %19, %15
  %36 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %9, align 8
  %37 = icmp ne %struct.b43_pio_txqueue* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @B43_WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store %struct.b43_pio_txqueue* null, %struct.b43_pio_txqueue** %4, align 8
  br label %65

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 4095
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %9, align 8
  %48 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %47, i32 0, i32 0
  %49 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %48, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.b43_pio_txpacket* %49)
  %51 = icmp uge i32 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @B43_WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store %struct.b43_pio_txqueue* null, %struct.b43_pio_txqueue** %4, align 8
  br label %65

56:                                               ; preds = %43
  %57 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %9, align 8
  %58 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %57, i32 0, i32 0
  %59 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %59, i64 %61
  %63 = load %struct.b43_pio_txpacket**, %struct.b43_pio_txpacket*** %7, align 8
  store %struct.b43_pio_txpacket* %62, %struct.b43_pio_txpacket** %63, align 8
  %64 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %9, align 8
  store %struct.b43_pio_txqueue* %64, %struct.b43_pio_txqueue** %4, align 8
  br label %65

65:                                               ; preds = %56, %55, %42
  %66 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %4, align 8
  ret %struct.b43_pio_txqueue* %66
}

declare dso_local i64 @B43_WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.b43_pio_txpacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
