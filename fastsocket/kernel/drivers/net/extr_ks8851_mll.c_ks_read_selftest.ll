; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_read_selftest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_read_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32 }

@MBIR_TXMBF = common dso_local global i32 0, align 4
@MBIR_RXMBF = common dso_local global i32 0, align 4
@KS_MBIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Memory selftest not finished\0A\00", align 1
@MBIR_TXMBFA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"TX memory selftest fails\0A\00", align 1
@MBIR_RXMBFA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RX memory selftest fails\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"the selftest passes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_net*)* @ks_read_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_read_selftest(%struct.ks_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %3, align 8
  %7 = load i32, i32* @MBIR_TXMBF, align 4
  %8 = load i32, i32* @MBIR_RXMBF, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %11 = load i32, i32* @KS_MBIR, align 4
  %12 = call i32 @ks_rdreg16(%struct.ks_net* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %20 = call i32 @ks_warn(%struct.ks_net* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MBIR_TXMBFA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %28 = call i32 @ks_err(%struct.ks_net* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MBIR_RXMBFA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %38 = call i32 @ks_err(%struct.ks_net* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %43 = call i32 @ks_info(%struct.ks_net* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i32 @ks_warn(%struct.ks_net*, i8*) #1

declare dso_local i32 @ks_err(%struct.ks_net*, i8*) #1

declare dso_local i32 @ks_info(%struct.ks_net*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
