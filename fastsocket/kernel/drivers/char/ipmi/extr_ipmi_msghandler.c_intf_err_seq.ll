; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_intf_err_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_intf_err_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.seq_table* }
%struct.seq_table = type { i64, %struct.ipmi_recv_msg*, i64 }
%struct.ipmi_recv_msg = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32)* @intf_err_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intf_err_seq(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.ipmi_recv_msg*, align 8
  %12 = alloca %struct.seq_table*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  store %struct.ipmi_recv_msg* null, %struct.ipmi_recv_msg** %11, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i8, i8* %9, align 1
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @GET_SEQ_FROM_MSGID(i64 %15, i8 zeroext %16, i64 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.seq_table*, %struct.seq_table** %24, align 8
  %26 = load i8, i8* %9, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %25, i64 %27
  %29 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.seq_table*, %struct.seq_table** %34, align 8
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %35, i64 %37
  %39 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.seq_table*, %struct.seq_table** %45, align 8
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %46, i64 %48
  store %struct.seq_table* %49, %struct.seq_table** %12, align 8
  %50 = load %struct.seq_table*, %struct.seq_table** %12, align 8
  %51 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.seq_table*, %struct.seq_table** %12, align 8
  %53 = getelementptr inbounds %struct.seq_table, %struct.seq_table* %52, i32 0, i32 1
  %54 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %53, align 8
  store %struct.ipmi_recv_msg* %54, %struct.ipmi_recv_msg** %11, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %43, %32, %3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %11, align 8
  %61 = icmp ne %struct.ipmi_recv_msg* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %11, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @deliver_err_response(%struct.ipmi_recv_msg* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @GET_SEQ_FROM_MSGID(i64, i8 zeroext, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @deliver_err_response(%struct.ipmi_recv_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
