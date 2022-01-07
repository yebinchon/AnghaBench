; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.async_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64, i32 }

@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @rs_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.async_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.async_struct*
  store %struct.async_struct* %11, %struct.async_struct** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = icmp ne %struct.tty_struct* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %16 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %14
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %25 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %29 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %33 = call i64 @CIRC_SPACE(i64 %27, i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  store i32 0, i32* %3, align 4
  br label %63

38:                                               ; preds = %21
  %39 = load i8, i8* %5, align 1
  %40 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %41 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %45 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8 %39, i8* %48, align 1
  %49 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %50 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = and i64 %53, %56
  %58 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %59 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %38, %35, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @CIRC_SPACE(i64, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
