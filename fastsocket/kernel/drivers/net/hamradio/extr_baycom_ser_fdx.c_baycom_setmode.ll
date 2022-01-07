; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_fdx.c_baycom_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_fdx.c_baycom_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baycom_state = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.baycom_state*, i8*)* @baycom_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_setmode(%struct.baycom_state* %0, i8* %1) #0 {
  %3 = alloca %struct.baycom_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.baycom_state* %0, %struct.baycom_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = call i32 @simple_strtoul(i8* %11, i32* null, i32 10)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = icmp ule i32 %16, 48
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = mul i32 %19, 100
  %21 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %22 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %15, %9
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 42)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %30 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strchr(i8* %32, i8 signext 43)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %37 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %40 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %28
  ret i32 0
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
