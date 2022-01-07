; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_try_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_try_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.tty_struct*, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.tty_struct = type { i32 }
%struct.sk_buff = type { i32, i8* }

@UART_MCR_RTS = common dso_local global i32 0, align 4
@REG_CPPP = common dso_local global i64 0, align 8
@BIT_CPPP = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@DLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.sk_buff*)* @isdn_tty_try_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_tty_try_read(%struct.TYPE_5__* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  store %struct.tty_struct* %17, %struct.tty_struct** %8, align 8
  %18 = icmp ne %struct.tty_struct* %17, null
  br i1 %18, label %19, label %82

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UART_MCR_RTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @tty_buffer_request_room(%struct.tty_struct* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @tty_insert_flip_string(%struct.tty_struct* %40, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %39, %36
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %9, align 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @REG_CPPP, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BIT_CPPP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %47
  %67 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %68 = load i8, i8* %9, align 1
  %69 = call i32 @tty_insert_flip_char(%struct.tty_struct* %67, i8 signext %68, i32 255)
  br label %75

70:                                               ; preds = %47
  %71 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %72 = load i8, i8* %9, align 1
  %73 = load i32, i32* @TTY_NORMAL, align 4
  %74 = call i32 @tty_insert_flip_char(%struct.tty_struct* %71, i8 signext %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %77 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  store i32 1, i32* %3, align 4
  br label %84

80:                                               ; preds = %26
  br label %81

81:                                               ; preds = %80, %19
  br label %82

82:                                               ; preds = %81, %14
  br label %83

83:                                               ; preds = %82, %2
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
