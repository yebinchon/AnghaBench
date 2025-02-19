; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { %struct.ib_send_wr* }
%struct.qib_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @qib_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr**, align 8
  %7 = alloca %struct.qib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %6, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %11 = call %struct.qib_qp* @to_iqp(%struct.ib_qp* %10)
  store %struct.qib_qp* %11, %struct.qib_qp** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %14 = icmp ne %struct.ib_send_wr* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %18 = call i32 @qib_post_one_send(%struct.qib_qp* %16, %struct.ib_send_wr* %17, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %23 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %22, %struct.ib_send_wr** %23, align 8
  br label %37

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %26, i32 0, i32 0
  %28 = load %struct.ib_send_wr*, %struct.ib_send_wr** %27, align 8
  store %struct.ib_send_wr* %28, %struct.ib_send_wr** %5, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %34 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %33, i32 0, i32 0
  %35 = call i32 @qib_do_send(i32* %34)
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.qib_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local i32 @qib_post_one_send(%struct.qib_qp*, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @qib_do_send(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
