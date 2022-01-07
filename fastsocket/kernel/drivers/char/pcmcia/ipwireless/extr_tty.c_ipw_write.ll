; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipw_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipw_tty* }
%struct.ipw_tty = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPWIRELESS_TX_QUEUE_SIZE = common dso_local global i32 0, align 4
@IPW_CHANNEL_RAS = common dso_local global i32 0, align 4
@ipw_write_packet_sent_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @ipw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw_tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.ipw_tty*, %struct.ipw_tty** %12, align 8
  store %struct.ipw_tty* %13, %struct.ipw_tty** %8, align 8
  %14 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %15 = icmp ne %struct.ipw_tty* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %21 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %24 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %29 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %81

33:                                               ; preds = %19
  %34 = load i32, i32* @IPWIRELESS_TX_QUEUE_SIZE, align 4
  %35 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %36 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %53 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %4, align 4
  br label %81

55:                                               ; preds = %48
  %56 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %57 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ipw_write_packet_sent_callback, align 4
  %63 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %64 = call i32 @ipwireless_send_packet(i32 %58, i32 %59, i8* %60, i32 %61, i32 %62, %struct.ipw_tty* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %69 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  store i32 0, i32* %4, align 4
  br label %81

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %74 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  %78 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %71, %67, %51, %27, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipwireless_send_packet(i32, i32, i8*, i32, i32, %struct.ipw_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
