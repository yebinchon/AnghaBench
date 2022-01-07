; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ppp_file* }
%struct.ppp_file = type { i64, i64, i32, i32 }
%struct.ppp = type { i64, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@INTERFACE = common dso_local global i64 0, align 8
@SC_LOOP_TRAFFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ppp_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ppp_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppp*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.ppp_file*, %struct.ppp_file** %10, align 8
  store %struct.ppp_file* %11, %struct.ppp_file** %6, align 8
  %12 = load %struct.ppp_file*, %struct.ppp_file** %6, align 8
  %13 = icmp ne %struct.ppp_file* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load %struct.ppp_file*, %struct.ppp_file** %6, align 8
  %18 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %17, i32 0, i32 3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32* %18, i32* %19)
  %21 = load i32, i32* @POLLOUT, align 4
  %22 = load i32, i32* @POLLWRNORM, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ppp_file*, %struct.ppp_file** %6, align 8
  %25 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %24, i32 0, i32 2
  %26 = call i64 @skb_peek(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @POLLIN, align 4
  %30 = load i32, i32* @POLLRDNORM, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %28, %15
  %35 = load %struct.ppp_file*, %struct.ppp_file** %6, align 8
  %36 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @POLLHUP, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %71

43:                                               ; preds = %34
  %44 = load %struct.ppp_file*, %struct.ppp_file** %6, align 8
  %45 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INTERFACE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.ppp_file*, %struct.ppp_file** %6, align 8
  %51 = call %struct.ppp* @PF_TO_PPP(%struct.ppp_file* %50)
  store %struct.ppp* %51, %struct.ppp** %8, align 8
  %52 = load %struct.ppp*, %struct.ppp** %8, align 8
  %53 = getelementptr inbounds %struct.ppp, %struct.ppp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.ppp*, %struct.ppp** %8, align 8
  %58 = getelementptr inbounds %struct.ppp, %struct.ppp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SC_LOOP_TRAFFIC, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @POLLIN, align 4
  %65 = load i32, i32* @POLLRDNORM, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %56, %49
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @skb_peek(i32*) #1

declare dso_local %struct.ppp* @PF_TO_PPP(%struct.ppp_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
