; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_set_mode_manual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_set_mode_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8913 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8gxx_set_mode_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_set_mode_manual(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgs8gxx_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %8 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %16 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %15, i32 12, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, -129
  store i32 %18, i32* %5, align 4
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %19, i32 12, i32 %20)
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %23 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %22, i32 12, i32* %5)
  %24 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %25 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %24, i32 25, i32* %6)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %46

29:                                               ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %35 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %34, i32 110, i32 5)
  %36 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %37 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %36, i32 57, i32 2)
  %38 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %39 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %38, i32 57, i32 3)
  %40 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %41 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %40, i32 61, i32 5)
  %42 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %43 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %42, i32 62, i32 40)
  %44 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %45 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %44, i32 83, i32 128)
  br label %53

46:                                               ; preds = %29, %14
  %47 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %48 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %47, i32 110, i32 63)
  %49 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %50 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %49, i32 57, i32 0)
  %51 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %52 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %51, i32 61, i32 4)
  br label %53

53:                                               ; preds = %46, %33
  %54 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %55 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %54)
  store i32 0, i32* %2, align 4
  br label %80

56:                                               ; preds = %1
  %57 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %58 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %57, i32 126, i32 0)
  %59 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %60 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %68 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %67, i32 193, i32 0)
  br label %69

69:                                               ; preds = %66, %56
  %70 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %71 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %70, i32 197, i32* %5)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 224
  %74 = or i32 %73, 6
  store i32 %74, i32* %5, align 4
  %75 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %75, i32 197, i32 %76)
  %78 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %79 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %69, %53
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
