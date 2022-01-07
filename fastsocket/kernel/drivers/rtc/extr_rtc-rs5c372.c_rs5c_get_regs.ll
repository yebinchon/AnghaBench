; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c372.c_rs5c_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c372.c_rs5c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs5c372 = type { i32*, i64, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i64, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@RS5C372_REG_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't read registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"%02x %02x %02x (%02x) %02x %02x %02x (%02x), %02x %02x %02x, %02x %02x %02x; %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs5c372*)* @rs5c_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_get_regs(%struct.rs5c372* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rs5c372*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca [1 x %struct.i2c_msg], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rs5c372* %0, %struct.rs5c372** %3, align 8
  %8 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %9 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %17 = load i32, i32* @I2C_M_RD, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 8, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %21 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %22 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %26 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %1
  %30 = load i32, i32* @RS5C372_REG_SECS, align 4
  %31 = call i32 @RS5C_ADDR(i32 %30)
  store i32 %31, i32* %6, align 4
  store i32 7, i32* %7, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %36 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %32, i32 %33, i32 %34, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %147

48:                                               ; preds = %29
  br label %63

49:                                               ; preds = %1
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %54 = call i32 @i2c_transfer(i32 %52, %struct.i2c_msg* %53, i32 1)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %147

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %67 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %72 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %77 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %82 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %87 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %92 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %97 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %102 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %107 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %112 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 9
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %117 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 10
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %122 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 11
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %127 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 12
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %132 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 13
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %137 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 14
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %142 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 15
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %75, i32 %80, i32 %85, i32 %90, i32 %95, i32 %100, i32 %105, i32 %110, i32 %115, i32 %120, i32 %125, i32 %130, i32 %135, i32 %140, i32 %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %63, %56, %42
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @RS5C_ADDR(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
