; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model2(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @cit_write_reg(%struct.gspca_dev* %7, i32 0, i32 256)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @cit_read_reg(%struct.gspca_dev* %9, i32 278, i32 0)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @cit_write_reg(%struct.gspca_dev* %11, i32 96, i32 278)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @cit_write_reg(%struct.gspca_dev* %13, i32 2, i32 274)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @cit_write_reg(%struct.gspca_dev* %15, i32 188, i32 300)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @cit_write_reg(%struct.gspca_dev* %17, i32 8, i32 299)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i32 0, i32 264)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @cit_write_reg(%struct.gspca_dev* %21, i32 1, i32 307)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @cit_write_reg(%struct.gspca_dev* %23, i32 1, i32 258)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %67 [
    i32 176, label %28
    i32 320, label %41
    i32 352, label %54
  ]

28:                                               ; preds = %1
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @cit_write_reg(%struct.gspca_dev* %29, i32 44, i32 259)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @cit_write_reg(%struct.gspca_dev* %31, i32 0, i32 260)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @cit_write_reg(%struct.gspca_dev* %33, i32 36, i32 261)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @cit_write_reg(%struct.gspca_dev* %35, i32 185, i32 266)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @cit_write_reg(%struct.gspca_dev* %37, i32 56, i32 281)
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  store i32 10, i32* %40, align 4
  br label %67

41:                                               ; preds = %1
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @cit_write_reg(%struct.gspca_dev* %42, i32 40, i32 259)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @cit_write_reg(%struct.gspca_dev* %44, i32 0, i32 260)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @cit_write_reg(%struct.gspca_dev* %46, i32 30, i32 261)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @cit_write_reg(%struct.gspca_dev* %48, i32 57, i32 266)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = call i32 @cit_write_reg(%struct.gspca_dev* %50, i32 112, i32 281)
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  store i32 2, i32* %53, align 4
  br label %67

54:                                               ; preds = %1
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @cit_write_reg(%struct.gspca_dev* %55, i32 44, i32 259)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @cit_write_reg(%struct.gspca_dev* %57, i32 0, i32 260)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = call i32 @cit_write_reg(%struct.gspca_dev* %59, i32 36, i32 261)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = call i32 @cit_write_reg(%struct.gspca_dev* %61, i32 57, i32 266)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @cit_write_reg(%struct.gspca_dev* %63, i32 112, i32 281)
  %65 = load %struct.sd*, %struct.sd** %3, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 0
  store i32 2, i32* %66, align 4
  br label %67

67:                                               ; preds = %1, %54, %41, %28
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @cit_write_reg(%struct.gspca_dev* %68, i32 0, i32 256)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %83 [
    i32 176, label %73
    i32 320, label %78
    i32 352, label %78
  ]

73:                                               ; preds = %67
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = call i32 @cit_write_reg(%struct.gspca_dev* %74, i32 80, i32 273)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @cit_write_reg(%struct.gspca_dev* %76, i32 208, i32 273)
  br label %83

78:                                               ; preds = %67, %67
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @cit_write_reg(%struct.gspca_dev* %79, i32 64, i32 273)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @cit_write_reg(%struct.gspca_dev* %81, i32 192, i32 273)
  br label %83

83:                                               ; preds = %67, %78, %73
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @cit_write_reg(%struct.gspca_dev* %84, i32 155, i32 271)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @cit_write_reg(%struct.gspca_dev* %86, i32 187, i32 271)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %88, i32 10, i32 92)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %90, i32 4, i32 0)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %92, i32 6, i32 251)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %94, i32 8, i32 0)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %96, i32 12, i32 9)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %98, i32 18, i32 10)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %100, i32 42, i32 0)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %102, i32 44, i32 0)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %104, i32 46, i32 8)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %106, i32 48, i32 0)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %132 [
    i32 176, label %111
    i32 320, label %118
    i32 352, label %125
  ]

111:                                              ; preds = %83
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %112, i32 20, i32 2)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %115 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %114, i32 22, i32 2)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %116, i32 24, i32 74)
  store i32 6, i32* %4, align 4
  br label %132

118:                                              ; preds = %83
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %119, i32 20, i32 9)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %121, i32 22, i32 5)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %123, i32 24, i32 68)
  store i32 8, i32* %4, align 4
  br label %132

125:                                              ; preds = %83
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %126, i32 20, i32 3)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %128, i32 22, i32 2)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %130, i32 24, i32 74)
  store i32 16, i32* %4, align 4
  br label %132

132:                                              ; preds = %83, %125, %118, %111
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %133, i32 28, i32 %134)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %148 [
    i32 176, label %139
    i32 320, label %142
    i32 352, label %145
  ]

139:                                              ; preds = %132
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %141 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %140, i32 38, i32 194)
  br label %148

142:                                              ; preds = %132
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %144 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %143, i32 38, i32 68)
  br label %148

145:                                              ; preds = %132
  %146 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %147 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %146, i32 38, i32 72)
  br label %148

148:                                              ; preds = %132, %145, %142, %139
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = load %struct.sd*, %struct.sd** %3, align 8
  %151 = getelementptr inbounds %struct.sd, %struct.sd* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %149, i32 40, i32 %152)
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %155 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %154, i32 30, i32 47)
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %156, i32 32, i32 52)
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %159 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %158, i32 34, i32 160)
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %161 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %160, i32 48, i32 4)
  ret i32 0
}

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model2_Packet1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
