; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_src.c_aac_src_deliver_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_src.c_aac_src_deliver_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.fib = type { i32, %struct.TYPE_9__*, %struct.aac_dev* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.aac_dev = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.aac_queue* }
%struct.aac_queue = type { i32, i32 }
%struct.aac_fib_xporthdr = type { i8*, i32, i8* }

@AdapNormCmdQueue = common dso_local global i64 0, align 8
@AAC_COMM_MESSAGE_TYPE2 = common dso_local global i64 0, align 8
@ALIGN32 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@FIB_MAGIC2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MUnit = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*)* @aac_src_deliver_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_deliver_message(%struct.fib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib*, align 8
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca %struct.aac_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_fib_xporthdr*, align 8
  %10 = alloca i32, align 4
  store %struct.fib* %0, %struct.fib** %3, align 8
  %11 = load %struct.fib*, %struct.fib** %3, align 8
  %12 = getelementptr inbounds %struct.fib, %struct.fib* %11, i32 0, i32 2
  %13 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  store %struct.aac_dev* %13, %struct.aac_dev** %4, align 8
  %14 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %15 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.aac_queue*, %struct.aac_queue** %17, align 8
  %19 = load i64, i64* @AdapNormCmdQueue, align 8
  %20 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %18, i64 %19
  store %struct.aac_queue* %20, %struct.aac_queue** %5, align 8
  %21 = load %struct.fib*, %struct.fib** %3, align 8
  %22 = getelementptr inbounds %struct.fib, %struct.fib* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %29 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32 %30, i64 %31)
  %33 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %34 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %38 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  %42 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AAC_COMM_MESSAGE_TYPE2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %1
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 127
  %50 = sdiv i32 %49, 128
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ALIGN32, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %159

59:                                               ; preds = %47
  %60 = load %struct.fib*, %struct.fib** %3, align 8
  %61 = getelementptr inbounds %struct.fib, %struct.fib* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @FIB_MAGIC2, align 4
  %64 = load %struct.fib*, %struct.fib** %3, align 8
  %65 = getelementptr inbounds %struct.fib, %struct.fib* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store i32 %63, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.fib*, %struct.fib** %3, align 8
  %71 = getelementptr inbounds %struct.fib, %struct.fib* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load %struct.fib*, %struct.fib** %3, align 8
  %76 = getelementptr inbounds %struct.fib, %struct.fib* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 32
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %149

90:                                               ; preds = %1
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 24, %92
  %94 = add i64 %93, 127
  %95 = udiv i64 %94, 128
  %96 = sub i64 %95, 1
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ALIGN32, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load i32, i32* @EMSGSIZE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %159

105:                                              ; preds = %90
  %106 = load %struct.fib*, %struct.fib** %3, align 8
  %107 = getelementptr inbounds %struct.fib, %struct.fib* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = bitcast %struct.TYPE_9__* %108 to i8*
  %110 = getelementptr i8, i8* %109, i64 -24
  %111 = bitcast i8* %110 to %struct.aac_fib_xporthdr*
  store %struct.aac_fib_xporthdr* %111, %struct.aac_fib_xporthdr** %9, align 8
  %112 = load %struct.fib*, %struct.fib** %3, align 8
  %113 = getelementptr inbounds %struct.fib, %struct.fib* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %9, align 8
  %120 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.fib*, %struct.fib** %3, align 8
  %122 = getelementptr inbounds %struct.fib, %struct.fib* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @cpu_to_le64(i32 %123)
  %125 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %9, align 8
  %126 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %9, align 8
  %130 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.fib*, %struct.fib** %3, align 8
  %132 = getelementptr inbounds %struct.fib, %struct.fib* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, 24
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @ALIGN32, align 4
  %139 = sub nsw i32 %138, 1
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %105
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %159

145:                                              ; preds = %105
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %145, %59
  %150 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @MUnit, i32 0, i32 1), align 4
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 32
  %154 = call i32 @src_writel(%struct.aac_dev* %150, i32 %151, i32 %153)
  %155 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @MUnit, i32 0, i32 0), align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @src_writel(%struct.aac_dev* %155, i32 %156, i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %149, %142, %102, %56
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
