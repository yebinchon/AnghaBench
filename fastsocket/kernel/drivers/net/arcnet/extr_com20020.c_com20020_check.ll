; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com20020.c_com20020_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com20020.c_com20020_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32, i32, i32, i32, i32, i32, i32 }

@ARCRESET0 = common dso_local global i32 0, align 4
@RESETtime = common dso_local global i32 0, align 4
@P1MODE = common dso_local global i32 0, align 4
@SUB_SETUP1 = common dso_local global i32 0, align 4
@_XREG = common dso_local global i32 0, align 4
@SUB_SETUP2 = common dso_local global i32 0, align 4
@_COMMAND = common dso_local global i32 0, align 4
@SETCONF = common dso_local global i32 0, align 4
@BUS_ALIGN = common dso_local global i32 0, align 4
@NORXflag = common dso_local global i32 0, align 4
@TXFREEflag = common dso_local global i32 0, align 4
@RESETflag = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"status invalid (%Xh).\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@D_INIT_REASONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"status after reset: %X\0A\00", align 1
@_CONFIG = common dso_local global i32 0, align 4
@CFLAGScmd = common dso_local global i32 0, align 4
@RESETclear = common dso_local global i32 0, align 4
@CONFIGclear = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"status after reset acknowledged: %X\0A\00", align 1
@RDDATAflag = common dso_local global i32 0, align 4
@AUTOINCflag = common dso_local global i32 0, align 4
@_ADDR_HI = common dso_local global i32 0, align 4
@_ADDR_LO = common dso_local global i32 0, align 4
@_MEMDATA = common dso_local global i32 0, align 4
@TESTvalue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Signature byte not found (%02Xh != D1h).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @com20020_check(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %10)
  store %struct.arcnet_local* %11, %struct.arcnet_local** %6, align 8
  %12 = load i32, i32* @ARCRESET0, align 4
  %13 = load i32, i32* @RESETtime, align 4
  %14 = call i32 @mdelay(i32 %13)
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %22 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 1
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i32 [ 0, %19 ], [ %24, %20 ]
  %27 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %28 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %30 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 4
  %33 = or i32 %32, 8
  %34 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %35 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %37 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @P1MODE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %42 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @SUB_SETUP1, align 4
  %44 = call i32 @SET_SUBADR(i32 %43)
  %45 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %46 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @_XREG, align 4
  %49 = call i32 @outb(i32 %47, i32 %48)
  %50 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %51 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %25
  %55 = load i32, i32* @SUB_SETUP2, align 4
  %56 = call i32 @SET_SUBADR(i32 %55)
  %57 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %58 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @_XREG, align 4
  %61 = call i32 @outb(i32 %59, i32 %60)
  %62 = call i32 @mdelay(i32 1)
  %63 = load i32, i32* @_COMMAND, align 4
  %64 = call i32 @outb(i32 24, i32 %63)
  br label %65

65:                                               ; preds = %54, %25
  %66 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %67 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 3
  %70 = or i32 33, %69
  %71 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %72 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 2
  %75 = or i32 %70, %74
  %76 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %77 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @SETCONF, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BUS_ALIGN, align 4
  %81 = mul nsw i32 %80, 7
  %82 = add nsw i32 %79, %81
  %83 = call i32 @outb(i32 66, i32 %82)
  %84 = call i32 (...) @ASTATUS()
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 153
  %87 = load i32, i32* @NORXflag, align 4
  %88 = load i32, i32* @TXFREEflag, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RESETflag, align 4
  %91 = or i32 %89, %90
  %92 = icmp ne i32 %86, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %65
  %94 = load i32, i32* @D_NORMAL, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @BUGMSG(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %144

99:                                               ; preds = %65
  %100 = load i32, i32* @D_INIT_REASONS, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @BUGMSG(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @_CONFIG, align 4
  %104 = call i32 @outb(i32 57, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @BUS_ALIGN, align 4
  %107 = mul nsw i32 %106, 8
  %108 = add nsw i32 %105, %107
  %109 = call i32 @inb(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @BUS_ALIGN, align 4
  %112 = mul nsw i32 %111, 7
  %113 = add nsw i32 %110, %112
  %114 = call i32 @outb(i32 %109, i32 %113)
  %115 = load i32, i32* @CFLAGScmd, align 4
  %116 = load i32, i32* @RESETclear, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CONFIGclear, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ACOMMAND(i32 %119)
  %121 = call i32 (...) @ASTATUS()
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @D_INIT_REASONS, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @BUGMSG(i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @RDDATAflag, align 4
  %126 = or i32 0, %125
  %127 = load i32, i32* @AUTOINCflag, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @_ADDR_HI, align 4
  %130 = call i32 @outb(i32 %128, i32 %129)
  %131 = load i32, i32* @_ADDR_LO, align 4
  %132 = call i32 @outb(i32 0, i32 %131)
  %133 = load i32, i32* @_MEMDATA, align 4
  %134 = call i32 @inb(i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* @TESTvalue, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %99
  %138 = load i32, i32* @D_NORMAL, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @BUGMSG(i32 %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %137, %93
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @SET_SUBADR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ASTATUS(...) #1

declare dso_local i32 @BUGMSG(i32, i8*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ACOMMAND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
