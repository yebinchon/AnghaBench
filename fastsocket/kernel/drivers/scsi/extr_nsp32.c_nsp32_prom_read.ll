; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_prom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_prom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @nsp32_prom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_prom_read(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @nsp32_prom_start(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @nsp32_prom_write_bit(i32* %9, i32 1)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @nsp32_prom_write_bit(i32* %11, i32 0)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @nsp32_prom_write_bit(i32* %13, i32 1)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @nsp32_prom_write_bit(i32* %15, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @nsp32_prom_write_bit(i32* %17, i32 0)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @nsp32_prom_write_bit(i32* %19, i32 0)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @nsp32_prom_write_bit(i32* %21, i32 0)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @nsp32_prom_write_bit(i32* %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @nsp32_prom_write_bit(i32* %25, i32 0)
  store i32 7, i32* %5, align 4
  br label %27

27:                                               ; preds = %37, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = call i32 @nsp32_prom_write_bit(i32* %31, i32 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @nsp32_prom_write_bit(i32* %41, i32 0)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @nsp32_prom_start(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @nsp32_prom_write_bit(i32* %45, i32 1)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @nsp32_prom_write_bit(i32* %47, i32 0)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @nsp32_prom_write_bit(i32* %49, i32 1)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @nsp32_prom_write_bit(i32* %51, i32 0)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @nsp32_prom_write_bit(i32* %53, i32 0)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @nsp32_prom_write_bit(i32* %55, i32 0)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @nsp32_prom_write_bit(i32* %57, i32 0)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @nsp32_prom_write_bit(i32* %59, i32 1)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @nsp32_prom_write_bit(i32* %61, i32 0)
  store i32 0, i32* %6, align 4
  store i32 7, i32* %5, align 4
  br label %63

63:                                               ; preds = %73, %40
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @nsp32_prom_read_bit(i32* %67)
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  br label %63

76:                                               ; preds = %63
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @nsp32_prom_write_bit(i32* %77, i32 1)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @nsp32_prom_stop(i32* %79)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @nsp32_prom_start(i32*) #1

declare dso_local i32 @nsp32_prom_write_bit(i32*, i32) #1

declare dso_local i32 @nsp32_prom_read_bit(i32*) #1

declare dso_local i32 @nsp32_prom_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
