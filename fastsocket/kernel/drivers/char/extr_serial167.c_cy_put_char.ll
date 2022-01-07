; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"cy_put_char\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @cy_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.cyclades_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.cyclades_port*, %struct.cyclades_port** %9, align 8
  store %struct.cyclades_port* %10, %struct.cyclades_port** %6, align 8
  %11 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @serial_paranoia_check(%struct.cyclades_port* %11, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %20 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %59

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %28 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  store i32 0, i32* %3, align 4
  br label %59

36:                                               ; preds = %24
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %39 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %42 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 %37, i8* %46, align 1
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %50 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %54 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %36, %33, %23, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @serial_paranoia_check(%struct.cyclades_port*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
