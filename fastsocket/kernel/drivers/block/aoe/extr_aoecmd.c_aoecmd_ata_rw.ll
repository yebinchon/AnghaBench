; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoecmd_ata_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoecmd_ata_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i64, %struct.TYPE_3__, %struct.aoetgt** }
%struct.TYPE_3__ = type { i32* }
%struct.aoetgt = type { i32 }
%struct.frame = type { i64, i64, i32, i32, i64, %struct.buf*, %struct.TYPE_4__* }
%struct.buf = type { i64, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@DEFAULTBCNT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aoedev*)* @aoecmd_ata_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoecmd_ata_rw(%struct.aoedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.aoetgt*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  %11 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %12 = call %struct.buf* @nextbuf(%struct.aoedev* %11)
  store %struct.buf* %12, %struct.buf** %5, align 8
  %13 = load %struct.buf*, %struct.buf** %5, align 8
  %14 = icmp eq %struct.buf* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %165

16:                                               ; preds = %1
  %17 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %18 = call %struct.frame* @newframe(%struct.aoedev* %17)
  store %struct.frame* %18, %struct.frame** %4, align 8
  %19 = load %struct.frame*, %struct.frame** %4, align 8
  %20 = icmp eq %struct.frame* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %165

22:                                               ; preds = %16
  %23 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %24 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %23, i32 0, i32 2
  %25 = load %struct.aoetgt**, %struct.aoetgt*** %24, align 8
  %26 = load %struct.aoetgt*, %struct.aoetgt** %25, align 8
  store %struct.aoetgt* %26, %struct.aoetgt** %6, align 8
  %27 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %28 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* @DEFAULTBCNT, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.buf*, %struct.buf** %5, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.buf*, %struct.buf** %5, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.buf*, %struct.buf** %5, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.frame*, %struct.frame** %4, align 8
  %50 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 6
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.frame*, %struct.frame** %4, align 8
  %52 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 6
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.frame*, %struct.frame** %4, align 8
  %57 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 6
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.buf*, %struct.buf** %5, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = add nsw i64 %55, %64
  %66 = load %struct.frame*, %struct.frame** %4, align 8
  %67 = getelementptr inbounds %struct.frame, %struct.frame* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %124, %44
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.buf*, %struct.buf** %5, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.buf*, %struct.buf** %5, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.buf*, %struct.buf** %5, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %127

85:                                               ; preds = %68
  %86 = load %struct.buf*, %struct.buf** %5, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %10, align 8
  %91 = load %struct.buf*, %struct.buf** %5, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.buf*, %struct.buf** %5, align 8
  %95 = getelementptr inbounds %struct.buf, %struct.buf* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.buf*, %struct.buf** %5, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %85
  %103 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %104 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  br label %127

106:                                              ; preds = %85
  %107 = load %struct.buf*, %struct.buf** %5, align 8
  %108 = getelementptr inbounds %struct.buf, %struct.buf* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 1
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %108, align 8
  %111 = load %struct.buf*, %struct.buf** %5, align 8
  %112 = getelementptr inbounds %struct.buf, %struct.buf* %111, i32 0, i32 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.buf*, %struct.buf** %5, align 8
  %117 = getelementptr inbounds %struct.buf, %struct.buf* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.buf*, %struct.buf** %5, align 8
  %119 = getelementptr inbounds %struct.buf, %struct.buf* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @WARN_ON(i32 %122)
  br label %124

124:                                              ; preds = %106
  %125 = load i64, i64* %10, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %68, label %127

127:                                              ; preds = %124, %102, %74
  %128 = load %struct.buf*, %struct.buf** %5, align 8
  %129 = load %struct.frame*, %struct.frame** %4, align 8
  %130 = getelementptr inbounds %struct.frame, %struct.frame* %129, i32 0, i32 5
  store %struct.buf* %128, %struct.buf** %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.frame*, %struct.frame** %4, align 8
  %133 = getelementptr inbounds %struct.frame, %struct.frame* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  %134 = load %struct.frame*, %struct.frame** %4, align 8
  %135 = call i32 @ata_rw_frameinit(%struct.frame* %134)
  %136 = load %struct.buf*, %struct.buf** %5, align 8
  %137 = getelementptr inbounds %struct.buf, %struct.buf* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load i64, i64* %9, align 8
  %141 = ashr i64 %140, 9
  %142 = load %struct.buf*, %struct.buf** %5, align 8
  %143 = getelementptr inbounds %struct.buf, %struct.buf* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load %struct.frame*, %struct.frame** %4, align 8
  %147 = getelementptr inbounds %struct.frame, %struct.frame* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @GFP_ATOMIC, align 4
  %150 = call %struct.sk_buff* @skb_clone(i32 %148, i32 %149)
  store %struct.sk_buff* %150, %struct.sk_buff** %7, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = icmp ne %struct.sk_buff* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %127
  %154 = load %struct.frame*, %struct.frame** %4, align 8
  %155 = getelementptr inbounds %struct.frame, %struct.frame* %154, i32 0, i32 2
  %156 = call i32 @do_gettimeofday(i32* %155)
  %157 = load i64, i64* @jiffies, align 8
  %158 = load %struct.frame*, %struct.frame** %4, align 8
  %159 = getelementptr inbounds %struct.frame, %struct.frame* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %8, %struct.sk_buff* %161)
  %163 = call i32 @aoenet_xmit(%struct.sk_buff_head* %8)
  br label %164

164:                                              ; preds = %153, %127
  store i32 1, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %21, %15
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.buf* @nextbuf(%struct.aoedev*) #1

declare dso_local %struct.frame* @newframe(%struct.aoedev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ata_rw_frameinit(%struct.frame*) #1

declare dso_local %struct.sk_buff* @skb_clone(i32, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @aoenet_xmit(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
