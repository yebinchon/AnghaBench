; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"cy_start\00", align 1
@CyCAR = common dso_local global i64 0, align 8
@CyTxMpty = common dso_local global i8 0, align 1
@CyIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @cy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cy_start(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.cyclades_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.cyclades_port*, %struct.cyclades_port** %8, align 8
  store %struct.cyclades_port* %9, %struct.cyclades_port** %3, align 8
  %10 = load i64, i64* @BASE_ADDR, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @serial_paranoia_check(%struct.cyclades_port* %12, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %21 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* @CyCAR, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store volatile i8 %26, i8* %29, align 1
  %30 = load volatile i8, i8* @CyTxMpty, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* @CyIER, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load volatile i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %31
  %38 = trunc i32 %37 to i8
  store volatile i8 %38, i8* %34, align 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  br label %41

41:                                               ; preds = %19, %18
  ret void
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
