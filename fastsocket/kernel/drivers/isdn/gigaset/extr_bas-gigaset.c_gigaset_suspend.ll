; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cardstate = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i32, i32, i32, i32, i32 }

@BS_SUSPEND = common dso_local global i32 0, align 4
@DEBUG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"already suspended\00", align 1
@BS_B1OPEN = common dso_local global i32 0, align 4
@BS_B2OPEN = common dso_local global i32 0, align 4
@BS_ATRDPEND = common dso_local global i32 0, align 4
@BS_ATWRPEND = common dso_local global i32 0, align 4
@BAS_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"wait_event_timeout() -> %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot suspend:\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" B channel 1 open\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" B channel 2 open\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" receiving AT reply\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" sending AT command\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BS_ATOPEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"closing AT channel\00", align 1
@HD_CLOSE_ATCHANNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"suspend complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @gigaset_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca %struct.bas_cardstate*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.cardstate* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.cardstate* %10, %struct.cardstate** %6, align 8
  %11 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.bas_cardstate*, %struct.bas_cardstate** %13, align 8
  store %struct.bas_cardstate* %14, %struct.bas_cardstate** %7, align 8
  %15 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %16 = load i32, i32* @BS_SUSPEND, align 4
  %17 = call i32 @update_basstate(%struct.bas_cardstate* %15, i32 %16, i32 0)
  %18 = load i32, i32* @BS_SUSPEND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @DEBUG_SUSPEND, align 4
  %23 = call i32 (i32, i8*, ...) @gig_dbg(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %171

24:                                               ; preds = %2
  %25 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %26 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %29 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BS_B1OPEN, align 4
  %32 = load i32, i32* @BS_B2OPEN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BS_ATRDPEND, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BS_ATWRPEND, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %30, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* @BAS_TIMEOUT, align 4
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 10
  %46 = call i32 @wait_event_timeout(i32 %27, i32 %41, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @DEBUG_SUSPEND, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i8*, ...) @gig_dbg(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %51 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BS_B1OPEN, align 4
  %54 = load i32, i32* @BS_B2OPEN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BS_ATRDPEND, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @BS_ATWRPEND, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %52, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %120

62:                                               ; preds = %24
  %63 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %64 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %68 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BS_B1OPEN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %75 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %62
  %79 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %80 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BS_B2OPEN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %87 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_warn(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %92 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BS_ATRDPEND, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %99 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_warn(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %90
  %103 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %104 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BS_ATWRPEND, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %111 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_warn(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %116 = load i32, i32* @BS_SUSPEND, align 4
  %117 = call i32 @update_basstate(%struct.bas_cardstate* %115, i32 0, i32 %116)
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %171

120:                                              ; preds = %24
  %121 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %122 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BS_ATOPEN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %120
  %128 = load i32, i32* @DEBUG_SUSPEND, align 4
  %129 = call i32 (i32, i8*, ...) @gig_dbg(i32 %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %130 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %131 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @HD_CLOSE_ATCHANNEL, align 4
  %134 = call i32 @req_submit(i32 %132, i32 %133, i32 0, i32 0)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %139 = load i32, i32* @BS_SUSPEND, align 4
  %140 = call i32 @update_basstate(%struct.bas_cardstate* %138, i32 0, i32 %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %171

142:                                              ; preds = %127
  %143 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %144 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %147 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* @BAS_TIMEOUT, align 4
  %153 = load i32, i32* @HZ, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sdiv i32 %154, 10
  %156 = call i32 @wait_event_timeout(i32 %145, i32 %151, i32 %155)
  br label %157

157:                                              ; preds = %142, %120
  %158 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %159 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @usb_kill_urb(i32 %160)
  %162 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %163 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @usb_kill_urb(i32 %164)
  %166 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %167 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %166, i32 0, i32 1
  %168 = call i32 @del_timer_sync(i32* %167)
  %169 = load i32, i32* @DEBUG_SUSPEND, align 4
  %170 = call i32 (i32, i8*, ...) @gig_dbg(i32 %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %157, %137, %114, %21
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.cardstate* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @update_basstate(%struct.bas_cardstate*, i32, i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @req_submit(i32, i32, i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
