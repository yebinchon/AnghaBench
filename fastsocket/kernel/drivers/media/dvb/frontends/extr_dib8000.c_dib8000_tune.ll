; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_tune(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %12 = call i32 @fft_to_mode(%struct.dib8000_state* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %14 = icmp eq %struct.dib8000_state* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %163

18:                                               ; preds = %1
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %21 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 1000
  %26 = call i32 @dib8000_set_bandwidth(%struct.dib8000_state* %19, i32 %25)
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %28 = call i32 @dib8000_set_channel(%struct.dib8000_state* %27, i32 0, i32 0)
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %29, i32 770, i32 16384)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %33, i32 770, i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = call i32 @msleep(i32 45)
  %38 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %39 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %18
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %44 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %51 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @msleep(i32 300)
  br label %60

58:                                               ; preds = %49
  %59 = call i32 @msleep(i32 500)
  br label %60

60:                                               ; preds = %58, %56
  br label %63

61:                                               ; preds = %42
  %62 = call i32 @msleep(i32 200)
  br label %63

63:                                               ; preds = %61, %60
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %115

71:                                               ; preds = %64
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %73 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %71
  %79 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 13, %80
  %82 = shl i32 %81, 12
  %83 = or i32 %82, 1536
  %84 = or i32 %83, 64
  %85 = call i32 @dib8000_write_word(%struct.dib8000_state* %79, i32 32, i32 %84)
  %86 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 12, %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 5, %89
  %91 = shl i32 %90, 5
  %92 = or i32 %88, %91
  %93 = call i32 @dib8000_write_word(%struct.dib8000_state* %86, i32 37, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %114

96:                                               ; preds = %71
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 12, %98
  %100 = shl i32 %99, 12
  %101 = or i32 %100, 1536
  %102 = or i32 %101, 96
  %103 = call i32 @dib8000_write_word(%struct.dib8000_state* %97, i32 32, i32 %102)
  %104 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 11, %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 5, %107
  %109 = shl i32 %108, 5
  %110 = or i32 %106, %109
  %111 = call i32 @dib8000_write_word(%struct.dib8000_state* %104, i32 37, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %96, %78
  br label %133

115:                                              ; preds = %64
  %116 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 11, %117
  %119 = shl i32 %118, 12
  %120 = or i32 %119, 1536
  %121 = or i32 %120, 128
  %122 = call i32 @dib8000_write_word(%struct.dib8000_state* %116, i32 32, i32 %121)
  %123 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 10, %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 5, %126
  %128 = shl i32 %127, 5
  %129 = or i32 %125, %128
  %130 = call i32 @dib8000_write_word(%struct.dib8000_state* %123, i32 37, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %115, %114
  %134 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %135 = call i32 @dib8000_read_word(%struct.dib8000_state* %134, i32 568)
  %136 = ashr i32 %135, 11
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %141 = call i32 @dib8000_update_timf(%struct.dib8000_state* %140)
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %144 = call i32 @dib8000_write_word(%struct.dib8000_state* %143, i32 6, i32 512)
  %145 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %146 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 32770
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %151 = call i32 @dib8000_read_word(%struct.dib8000_state* %150, i32 903)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, -9
  %155 = call i32 @dib8000_write_word(%struct.dib8000_state* %152, i32 903, i32 %154)
  %156 = call i32 @msleep(i32 1)
  %157 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, 8
  %160 = call i32 @dib8000_write_word(%struct.dib8000_state* %157, i32 903, i32 %159)
  br label %161

161:                                              ; preds = %149, %142
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %15
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @fft_to_mode(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_set_bandwidth(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_channel(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_update_timf(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
