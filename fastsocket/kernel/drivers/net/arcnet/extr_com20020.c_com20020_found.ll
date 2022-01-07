; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com20020.c_com20020_found.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com20020.c_com20020_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.arcnet_local = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@com20020_command = common dso_local global i32 0, align 4
@com20020_status = common dso_local global i32 0, align 4
@com20020_setmask = common dso_local global i32 0, align 4
@com20020_reset = common dso_local global i32 0, align 4
@com20020_copy_to_card = common dso_local global i32 0, align 4
@com20020_copy_from_card = common dso_local global i32 0, align 4
@com20020_close = common dso_local global i32 0, align 4
@BUS_ALIGN = common dso_local global i32 0, align 4
@SUB_SETUP1 = common dso_local global i32 0, align 4
@_XREG = common dso_local global i32 0, align 4
@ARC_CAN_10MBIT = common dso_local global i32 0, align 4
@SUB_SETUP2 = common dso_local global i32 0, align 4
@_COMMAND = common dso_local global i32 0, align 4
@SETCONF = common dso_local global i32 0, align 4
@arcnet_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"arcnet (COM20020)\00", align 1
@D_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't get IRQ %d!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: station %02Xh found at %03lXh, IRQ %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Using backplane mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Using extended timeout value of %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Using CKP %d - data rate %s.\0A\00", align 1
@clockrates = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @com20020_found(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %11)
  store %struct.arcnet_local* %12, %struct.arcnet_local** %6, align 8
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %15 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @com20020_command, align 4
  %18 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %19 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @com20020_status, align 4
  %22 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %23 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @com20020_setmask, align 4
  %26 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %27 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @com20020_reset, align 4
  %30 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %31 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @com20020_copy_to_card, align 4
  %34 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %35 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @com20020_copy_from_card, align 4
  %38 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %39 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @com20020_close, align 4
  %42 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %43 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BUS_ALIGN, align 4
  %54 = mul nsw i32 %53, 8
  %55 = add nsw i32 %52, %54
  %56 = call i32 @inb(i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %2
  %62 = load i32, i32* @SUB_SETUP1, align 4
  %63 = call i32 @SET_SUBADR(i32 %62)
  %64 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %65 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @_XREG, align 4
  %68 = call i32 @outb(i32 %66, i32 %67)
  %69 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %70 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ARC_CAN_10MBIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %61
  %76 = load i32, i32* @SUB_SETUP2, align 4
  %77 = call i32 @SET_SUBADR(i32 %76)
  %78 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %79 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @_XREG, align 4
  %82 = call i32 @outb(i32 %80, i32 %81)
  %83 = call i32 @mdelay(i32 1)
  %84 = load i32, i32* @_COMMAND, align 4
  %85 = call i32 @outb(i32 24, i32 %84)
  br label %86

86:                                               ; preds = %75, %61
  %87 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %88 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 3
  %91 = or i32 32, %90
  %92 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %93 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 2
  %96 = or i32 %91, %95
  %97 = or i32 %96, 1
  %98 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %99 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @SETCONF, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @_XREG, align 4
  %107 = call i32 @outb(i32 %105, i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = call i64 @request_irq(i32 %110, i32* @arcnet_interrupt, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.net_device* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %86
  %116 = load i32, i32* @D_NORMAL, align 4
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @BUGMSG(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %196

123:                                              ; preds = %86
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @D_NORMAL, align 4
  %128 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %129 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %4, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.net_device*, %struct.net_device** %4, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, ...) @BUGMSG(i32 %127, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %135, i32 %138, i32 %141)
  %143 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %144 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %123
  %148 = load i32, i32* @D_NORMAL, align 4
  %149 = call i32 (i32, i8*, ...) @BUGMSG(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %123
  %151 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %152 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 3
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @D_NORMAL, align 4
  %157 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %158 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, ...) @BUGMSG(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i32, i32* @D_NORMAL, align 4
  %163 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %164 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 1
  %167 = load i32*, i32** @clockrates, align 8
  %168 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %169 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 240
  %172 = ashr i32 %171, 4
  %173 = sub nsw i32 3, %172
  %174 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %175 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 15
  %178 = ashr i32 %177, 1
  %179 = add nsw i32 %173, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %167, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @BUGMSG(i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %166, i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %4, align 8
  %185 = call i64 @register_netdev(%struct.net_device* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %161
  %188 = load %struct.net_device*, %struct.net_device** %4, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.net_device*, %struct.net_device** %4, align 8
  %192 = call i32 @free_irq(i32 %190, %struct.net_device* %191)
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %196

195:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %187, %115
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @SET_SUBADR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*, ...) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
