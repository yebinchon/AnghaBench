; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethoc = type { i32, i32, i32, i64, i64, i64 }
%struct.ethoc_bd = type { i32, i32 }

@TX_BD_IRQ = common dso_local global i32 0, align 4
@TX_BD_CRC = common dso_local global i32 0, align 4
@TX_BD_WRAP = common dso_local global i32 0, align 4
@ETHOC_BUFSIZ = common dso_local global i64 0, align 8
@RX_BD_EMPTY = common dso_local global i32 0, align 4
@RX_BD_IRQ = common dso_local global i32 0, align 4
@RX_BD_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethoc*)* @ethoc_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_init_ring(%struct.ethoc* %0) #0 {
  %2 = alloca %struct.ethoc*, align 8
  %3 = alloca %struct.ethoc_bd, align 4
  %4 = alloca i32, align 4
  store %struct.ethoc* %0, %struct.ethoc** %2, align 8
  %5 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %6 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %8 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %10 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %12 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @virt_to_phys(i32 %13)
  %15 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @TX_BD_IRQ, align 4
  %17 = load i32, i32* @TX_BD_CRC, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %48, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %23 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %29 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @TX_BD_WRAP, align 4
  %35 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ethoc_write_bd(%struct.ethoc* %39, i32 %40, %struct.ethoc_bd* %3)
  %42 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %43 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %42
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load i32, i32* @RX_BD_EMPTY, align 4
  %53 = load i32, i32* @RX_BD_IRQ, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %88, %51
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %59 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %65 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* @RX_BD_WRAP, align 4
  %71 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %76 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %77 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @ethoc_write_bd(%struct.ethoc* %75, i32 %80, %struct.ethoc_bd* %3)
  %82 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %83 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %3, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %82
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %56

91:                                               ; preds = %56
  ret i32 0
}

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @ethoc_write_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
