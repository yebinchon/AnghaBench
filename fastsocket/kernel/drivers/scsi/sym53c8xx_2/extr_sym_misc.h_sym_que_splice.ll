; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_misc.h_sym_que_splice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_misc.h_sym_que_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_quehead = type { %struct.sym_quehead*, %struct.sym_quehead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_quehead*, %struct.sym_quehead*)* @sym_que_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_que_splice(%struct.sym_quehead* %0, %struct.sym_quehead* %1) #0 {
  %3 = alloca %struct.sym_quehead*, align 8
  %4 = alloca %struct.sym_quehead*, align 8
  %5 = alloca %struct.sym_quehead*, align 8
  %6 = alloca %struct.sym_quehead*, align 8
  %7 = alloca %struct.sym_quehead*, align 8
  store %struct.sym_quehead* %0, %struct.sym_quehead** %3, align 8
  store %struct.sym_quehead* %1, %struct.sym_quehead** %4, align 8
  %8 = load %struct.sym_quehead*, %struct.sym_quehead** %3, align 8
  %9 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %8, i32 0, i32 1
  %10 = load %struct.sym_quehead*, %struct.sym_quehead** %9, align 8
  store %struct.sym_quehead* %10, %struct.sym_quehead** %5, align 8
  %11 = load %struct.sym_quehead*, %struct.sym_quehead** %5, align 8
  %12 = load %struct.sym_quehead*, %struct.sym_quehead** %3, align 8
  %13 = icmp ne %struct.sym_quehead* %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.sym_quehead*, %struct.sym_quehead** %3, align 8
  %16 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %15, i32 0, i32 0
  %17 = load %struct.sym_quehead*, %struct.sym_quehead** %16, align 8
  store %struct.sym_quehead* %17, %struct.sym_quehead** %6, align 8
  %18 = load %struct.sym_quehead*, %struct.sym_quehead** %4, align 8
  %19 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %18, i32 0, i32 1
  %20 = load %struct.sym_quehead*, %struct.sym_quehead** %19, align 8
  store %struct.sym_quehead* %20, %struct.sym_quehead** %7, align 8
  %21 = load %struct.sym_quehead*, %struct.sym_quehead** %4, align 8
  %22 = load %struct.sym_quehead*, %struct.sym_quehead** %5, align 8
  %23 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %22, i32 0, i32 0
  store %struct.sym_quehead* %21, %struct.sym_quehead** %23, align 8
  %24 = load %struct.sym_quehead*, %struct.sym_quehead** %5, align 8
  %25 = load %struct.sym_quehead*, %struct.sym_quehead** %4, align 8
  %26 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %25, i32 0, i32 1
  store %struct.sym_quehead* %24, %struct.sym_quehead** %26, align 8
  %27 = load %struct.sym_quehead*, %struct.sym_quehead** %7, align 8
  %28 = load %struct.sym_quehead*, %struct.sym_quehead** %6, align 8
  %29 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %28, i32 0, i32 1
  store %struct.sym_quehead* %27, %struct.sym_quehead** %29, align 8
  %30 = load %struct.sym_quehead*, %struct.sym_quehead** %6, align 8
  %31 = load %struct.sym_quehead*, %struct.sym_quehead** %7, align 8
  %32 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %31, i32 0, i32 0
  store %struct.sym_quehead* %30, %struct.sym_quehead** %32, align 8
  br label %33

33:                                               ; preds = %14, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
