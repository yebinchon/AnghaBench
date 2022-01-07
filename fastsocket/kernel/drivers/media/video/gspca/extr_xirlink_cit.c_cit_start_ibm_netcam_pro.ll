; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_ibm_netcam_pro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_ibm_netcam_pro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@rca_input = common dso_local global i64 0, align 8
@rca_initdata = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_ibm_netcam_pro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_ibm_netcam_pro(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i16 0, i16* %4, align 2
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = call i32 @cit_get_clock_div(%struct.gspca_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %187

13:                                               ; preds = %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @cit_write_reg(%struct.gspca_dev* %14, i16 zeroext 3, i32 307)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @cit_write_reg(%struct.gspca_dev* %16, i16 zeroext 0, i32 279)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @cit_write_reg(%struct.gspca_dev* %18, i16 zeroext 8, i32 291)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %20, i16 zeroext 0, i32 256)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @cit_write_reg(%struct.gspca_dev* %22, i16 zeroext 96, i32 278)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @cit_write_reg(%struct.gspca_dev* %24, i16 zeroext 0, i32 307)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @cit_write_reg(%struct.gspca_dev* %26, i16 zeroext 0, i32 291)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %28, i16 zeroext 1, i32 279)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = call i32 @cit_write_reg(%struct.gspca_dev* %30, i16 zeroext 64, i32 264)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i16 zeroext 25, i32 300)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @cit_write_reg(%struct.gspca_dev* %34, i16 zeroext 96, i32 278)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %36, i32 73, i32 0)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @cit_write_reg(%struct.gspca_dev* %38, i16 zeroext 0, i32 257)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @cit_write_reg(%struct.gspca_dev* %40, i16 zeroext 58, i32 258)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = call i32 @cit_write_reg(%struct.gspca_dev* %42, i16 zeroext 160, i32 259)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = call i32 @cit_write_reg(%struct.gspca_dev* %44, i16 zeroext 120, i32 261)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @cit_write_reg(%struct.gspca_dev* %46, i16 zeroext 0, i32 266)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @cit_write_reg(%struct.gspca_dev* %48, i16 zeroext 2, i32 285)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = call i32 @cit_write_reg(%struct.gspca_dev* %50, i16 zeroext 0, i32 297)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = call i32 @cit_write_reg(%struct.gspca_dev* %52, i16 zeroext 252, i32 299)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = call i32 @cit_write_reg(%struct.gspca_dev* %54, i16 zeroext 34, i32 298)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %97 [
    i32 160, label %59
    i32 320, label %78
  ]

59:                                               ; preds = %13
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %61 = call i32 @cit_write_reg(%struct.gspca_dev* %60, i16 zeroext 36, i32 267)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @cit_write_reg(%struct.gspca_dev* %62, i16 zeroext 137, i32 281)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = call i32 @cit_write_reg(%struct.gspca_dev* %64, i16 zeroext 10, i32 283)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = call i32 @cit_write_reg(%struct.gspca_dev* %66, i16 zeroext 3, i32 286)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %69 = call i32 @cit_write_reg(%struct.gspca_dev* %68, i16 zeroext 7, i32 260)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %71 = call i32 @cit_write_reg(%struct.gspca_dev* %70, i16 zeroext 9, i32 282)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = call i32 @cit_write_reg(%struct.gspca_dev* %72, i16 zeroext 139, i32 284)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = call i32 @cit_write_reg(%struct.gspca_dev* %74, i16 zeroext 8, i32 280)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %77 = call i32 @cit_write_reg(%struct.gspca_dev* %76, i16 zeroext 0, i32 306)
  br label %97

78:                                               ; preds = %13
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %80 = call i32 @cit_write_reg(%struct.gspca_dev* %79, i16 zeroext 40, i32 267)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %82 = call i32 @cit_write_reg(%struct.gspca_dev* %81, i16 zeroext 217, i32 281)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %84 = call i32 @cit_write_reg(%struct.gspca_dev* %83, i16 zeroext 6, i32 283)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = call i32 @cit_write_reg(%struct.gspca_dev* %85, i16 zeroext 0, i32 286)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %88 = call i32 @cit_write_reg(%struct.gspca_dev* %87, i16 zeroext 14, i32 260)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %90 = call i32 @cit_write_reg(%struct.gspca_dev* %89, i16 zeroext 4, i32 282)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %92 = call i32 @cit_write_reg(%struct.gspca_dev* %91, i16 zeroext 63, i32 284)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = call i32 @cit_write_reg(%struct.gspca_dev* %93, i16 zeroext 12, i32 280)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %96 = call i32 @cit_write_reg(%struct.gspca_dev* %95, i16 zeroext 0, i32 306)
  br label %97

97:                                               ; preds = %13, %78, %59
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %98, i32 25, i32 49)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %100, i32 26, i32 3)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %102, i32 27, i32 56)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %104, i32 28, i32 0)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %107 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %106, i32 36, i32 1)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %109 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %108, i32 39, i32 1)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %110, i32 42, i32 4)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %112, i32 53, i32 11)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %115 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %114, i32 63, i32 1)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %117 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %116, i32 68, i32 0)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %119 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %118, i32 84, i32 0)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %120, i32 196, i32 0)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %122, i32 231, i32 1)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %125 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %124, i32 233, i32 1)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %127 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %126, i32 238, i32 0)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %129 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %128, i32 243, i32 192)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @cit_write_reg(%struct.gspca_dev* %130, i16 zeroext 0, i32 265)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %133 = load i32, i32* %6, align 4
  %134 = trunc i32 %133 to i16
  %135 = call i32 @cit_write_reg(%struct.gspca_dev* %132, i16 zeroext %134, i32 273)
  %136 = load i64, i64* @rca_input, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %186

138:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %182, %138
  %140 = load i32, i32* %5, align 4
  %141 = load i32**, i32*** @rca_initdata, align 8
  %142 = call i32 @ARRAY_SIZE(i32** %141)
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %185

144:                                              ; preds = %139
  %145 = load i32**, i32*** @rca_initdata, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %144
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %155 = load i32**, i32*** @rca_initdata, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @cit_read_reg(%struct.gspca_dev* %154, i32 %161, i32 0)
  br label %181

163:                                              ; preds = %144
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %165 = load i32**, i32*** @rca_initdata, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = trunc i32 %171 to i16
  %173 = load i32**, i32*** @rca_initdata, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @cit_write_reg(%struct.gspca_dev* %164, i16 zeroext %172, i32 %179)
  br label %181

181:                                              ; preds = %163, %153
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %139

185:                                              ; preds = %139
  br label %186

186:                                              ; preds = %185, %97
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %11
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @cit_get_clock_div(%struct.gspca_dev*) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i16 zeroext, i32) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
