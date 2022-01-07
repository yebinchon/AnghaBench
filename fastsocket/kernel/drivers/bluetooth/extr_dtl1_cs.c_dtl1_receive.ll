; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_24__ = type { i8*, i32, i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@NSHL = common dso_local global i8* null, align 8
@UART_RX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Unknown HCI packet with type 0x%02x received\00", align 1
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @dtl1_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtl1_receive(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %7 = icmp ne %struct.TYPE_23__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %189

10:                                               ; preds = %1
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %180, %10
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %28 = icmp eq %struct.TYPE_24__* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %17
  %30 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.TYPE_24__* @bt_skb_alloc(i32 %30, i32 %31)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 2
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %34, align 8
  %35 = icmp ne %struct.TYPE_24__* %32, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  store i32 128, i32* %39, align 8
  %40 = load i8*, i8** @NSHL, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %189

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @UART_RX, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inb(i64 %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = call i32* @skb_put(%struct.TYPE_24__* %53, i32 1)
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %4, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %174

69:                                               ; preds = %45
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %173 [
    i32 128, label %73
    i32 129, label %87
  ]

73:                                               ; preds = %69
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  store i32 129, i32* %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = add nsw i32 %78, %82
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %173

87:                                               ; preds = %69
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = call %struct.TYPE_17__* @bt_cb(%struct.TYPE_24__* %93)
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %87
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %101, %87
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = load i8*, i8** @NSHL, align 8
  %119 = call i32 @skb_pull(%struct.TYPE_24__* %117, i8* %118)
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = call %struct.TYPE_17__* @bt_cb(%struct.TYPE_24__* %122)
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %152 [
    i32 128, label %126
    i32 130, label %132
    i32 131, label %132
    i32 132, label %132
  ]

126:                                              ; preds = %114
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = call i32 @dtl1_control(%struct.TYPE_23__* %127, %struct.TYPE_24__* %130)
  br label %164

132:                                              ; preds = %114, %114, %114
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = bitcast %struct.TYPE_21__* %135 to i8*
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  store i8* %136, i8** %140, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = call %struct.TYPE_17__* @bt_cb(%struct.TYPE_24__* %143)
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 15
  store i32 %147, i32* %145, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = call i32 @hci_recv_frame(%struct.TYPE_24__* %150)
  br label %164

152:                                              ; preds = %114
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = call %struct.TYPE_17__* @bt_cb(%struct.TYPE_24__* %155)
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = call i32 @kfree_skb(%struct.TYPE_24__* %162)
  br label %164

164:                                              ; preds = %152, %132, %126
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  store i32 128, i32* %166, align 8
  %167 = load i8*, i8** @NSHL, align 8
  %168 = ptrtoint i8* %167 to i64
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %172, align 8
  br label %173

173:                                              ; preds = %69, %164, %73
  br label %174

174:                                              ; preds = %173, %45
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  %177 = icmp sgt i32 %175, 32
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %189

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %3, align 4
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* @UART_LSR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @inb(i64 %184)
  %186 = load i32, i32* @UART_LSR_DR, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %17, label %189

189:                                              ; preds = %8, %36, %180, %178
  ret void
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local %struct.TYPE_24__* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32* @skb_put(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_17__* @bt_cb(%struct.TYPE_24__*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @dtl1_control(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @hci_recv_frame(%struct.TYPE_24__*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
