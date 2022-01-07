; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_au1550_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_au1550_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_au1550_data* }
%struct.i2c_au1550_data = type { i64 }
%struct.i2c_msg = type { i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PSC_CTRL_ENABLE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@PSC_CTRL_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @au1550_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_au1550_data*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %13, align 8
  store %struct.i2c_au1550_data* %14, %struct.i2c_au1550_data** %7, align 8
  %15 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %16 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @PSC_CTRL_ENABLE, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store volatile i32 %19, i32* %21, align 4
  %22 = call i32 (...) @au_sync()
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %86, %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %89

32:                                               ; preds = %30
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 %35
  store %struct.i2c_msg* %36, %struct.i2c_msg** %9, align 8
  %37 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I2C_M_RD, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @do_address(%struct.i2c_au1550_data* %37, i32 %40, i32 %45, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %32
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %32
  br label %86

60:                                               ; preds = %54
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @I2C_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @i2c_read(%struct.i2c_au1550_data* %68, i32 %71, i64 %74)
  store i32 %75, i32* %11, align 4
  br label %85

76:                                               ; preds = %60
  %77 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @i2c_write(%struct.i2c_au1550_data* %77, i32 %80, i64 %83)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %76, %67
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %23

89:                                               ; preds = %30
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* @PSC_CTRL_SUSPEND, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store volatile i32 %95, i32* %97, align 4
  %98 = call i32 (...) @au_sync()
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @do_address(%struct.i2c_au1550_data*, i32, i32, i32) #1

declare dso_local i32 @i2c_read(%struct.i2c_au1550_data*, i32, i64) #1

declare dso_local i32 @i2c_write(%struct.i2c_au1550_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
