; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_send_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_send_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i64, i32, i64, i32*, %struct.cmdbuf_t*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_cardstate* }
%struct.usb_cardstate = type { i32, i32, i32, i32, i32 }
%struct.cmdbuf_t = type { i64, i64, i64, i64, i32*, %struct.cmdbuf_t* }

@ENOENT = common dso_local global i32 0, align 4
@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"send_cb: sent %u bytes, %u left\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"send_cb: send %d bytes\00", align 1
@gigaset_write_bulk_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not submit urb (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, %struct.cmdbuf_t*)* @send_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cb(%struct.cardstate* %0, %struct.cmdbuf_t* %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca %struct.cmdbuf_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store %struct.cmdbuf_t* %1, %struct.cmdbuf_t** %4, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.usb_cardstate*, %struct.usb_cardstate** %14, align 8
  store %struct.usb_cardstate* %15, %struct.usb_cardstate** %9, align 8
  br label %16

16:                                               ; preds = %179, %2
  %17 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %18 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %16
  %22 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  store %struct.cmdbuf_t* %22, %struct.cmdbuf_t** %5, align 8
  %23 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 3
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load i32, i32* @DEBUG_OUTPUT, align 4
  %37 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %42 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %46 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %45, i32 0, i32 5
  %47 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %46, align 8
  store %struct.cmdbuf_t* %47, %struct.cmdbuf_t** %4, align 8
  %48 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 6
  store %struct.cmdbuf_t* %47, %struct.cmdbuf_t** %49, align 8
  %50 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %51 = icmp ne %struct.cmdbuf_t* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %21
  %53 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %54 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %56 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %59 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  br label %65

60:                                               ; preds = %21
  %61 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %62 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %61, i32 0, i32 5
  store i32* null, i32** %62, align 8
  %63 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %64 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %67 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %66, i32 0, i32 3
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  %71 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  %76 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @tasklet_schedule(i64 %77)
  br label %79

79:                                               ; preds = %74, %65
  %80 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  %81 = call i32 @kfree(%struct.cmdbuf_t* %80)
  br label %82

82:                                               ; preds = %79, %16
  %83 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %84 = icmp ne %struct.cmdbuf_t* %83, null
  br i1 %84, label %85, label %172

85:                                               ; preds = %82
  %86 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %87 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %90 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @min(i64 %88, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @DEBUG_OUTPUT, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %97 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %100 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %103 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %106 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 15
  %109 = call i32 @usb_sndbulkpipe(i32 %104, i32 %108)
  %110 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %111 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %114 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @gigaset_write_bulk_callback, align 4
  %119 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %120 = call i32 @usb_fill_bulk_urb(i32 %98, i32 %101, i32 %109, i64 %116, i32 %117, i32 %118, %struct.cardstate* %119)
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %124 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %130 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %134 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %136 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %135, i32 0, i32 1
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @spin_lock_irqsave(i32* %136, i64 %137)
  %139 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %140 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %85
  %144 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %145 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GFP_ATOMIC, align 4
  %148 = call i32 @usb_submit_urb(i32 %146, i32 %147)
  br label %152

149:                                              ; preds = %85
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  br label %152

152:                                              ; preds = %149, %143
  %153 = phi i32 [ %148, %143 ], [ %151, %149 ]
  store i32 %153, i32* %8, align 4
  %154 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %155 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %154, i32 0, i32 1
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %152
  %161 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  %162 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %164 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 0, %166
  %168 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %170 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %160, %152
  br label %172

172:                                              ; preds = %171, %82
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %175 = icmp ne %struct.cmdbuf_t* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i1 [ false, %173 ], [ %178, %176 ]
  br i1 %180, label %16, label %181

181:                                              ; preds = %179
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i64) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i64, i32, i32, %struct.cardstate*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
