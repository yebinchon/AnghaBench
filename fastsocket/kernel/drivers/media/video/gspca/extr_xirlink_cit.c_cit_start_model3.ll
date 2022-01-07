; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@rca_input = common dso_local global i64 0, align 8
@rca_initdata = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model3(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  store i16 0, i16* %3, align 2
  store i32 0, i32* %5, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @cit_read_reg(%struct.gspca_dev* %6, i32 296, i32 1)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = call i32 @cit_write_reg(%struct.gspca_dev* %8, i16 zeroext 0, i32 256)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @cit_read_reg(%struct.gspca_dev* %10, i32 278, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @cit_write_reg(%struct.gspca_dev* %12, i16 zeroext 96, i32 278)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @cit_write_reg(%struct.gspca_dev* %14, i16 zeroext 2, i32 274)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @cit_write_reg(%struct.gspca_dev* %16, i16 zeroext 0, i32 291)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @cit_write_reg(%struct.gspca_dev* %18, i16 zeroext 1, i32 279)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %20, i16 zeroext 64, i32 264)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @cit_write_reg(%struct.gspca_dev* %22, i16 zeroext 25, i32 300)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @cit_write_reg(%struct.gspca_dev* %24, i16 zeroext 96, i32 278)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @cit_write_reg(%struct.gspca_dev* %26, i16 zeroext 2, i32 277)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %28, i16 zeroext 3, i32 277)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @cit_read_reg(%struct.gspca_dev* %30, i32 277, i32 0)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i16 zeroext 11, i32 277)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %34, i32 10, i32 64)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %36, i32 11, i32 246)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %38, i32 12, i32 2)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %40, i32 13, i32 32)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %42, i32 14, i32 51)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %44, i32 15, i32 7)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %46, i32 16, i32 0)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %48, i32 17, i32 112)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %50, i32 18, i32 48)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %52, i32 19, i32 0)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %54, i32 20, i32 1)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %56, i32 21, i32 1)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %58, i32 22, i32 1)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %60, i32 23, i32 1)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %62, i32 24, i32 0)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %64, i32 30, i32 195)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %66, i32 32, i32 0)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %68, i32 40, i32 16)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %70, i32 41, i32 84)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %72, i32 42, i32 19)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %74, i32 43, i32 7)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %76, i32 45, i32 40)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %78, i32 46, i32 0)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %80, i32 49, i32 0)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %82, i32 50, i32 0)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %84, i32 51, i32 0)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %86, i32 52, i32 0)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %88, i32 53, i32 56)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %90, i32 58, i32 1)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %92, i32 60, i32 30)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %94, i32 63, i32 10)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %96, i32 65, i32 0)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %98, i32 70, i32 63)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %100, i32 71, i32 0)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %102, i32 80, i32 5)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %104, i32 82, i32 26)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %106, i32 83, i32 3)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %108, i32 90, i32 107)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %110, i32 93, i32 30)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %112, i32 94, i32 48)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %115 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %114, i32 95, i32 65)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %116, i32 100, i32 8)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %118, i32 101, i32 21)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %120, i32 104, i32 15)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %122, i32 121, i32 0)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %124, i32 122, i32 0)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %126, i32 124, i32 63)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %128, i32 130, i32 15)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %130, i32 133, i32 0)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %133 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %132, i32 153, i32 0)
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %134, i32 155, i32 35)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %136, i32 156, i32 34)
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %138, i32 157, i32 150)
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %141 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %140, i32 158, i32 150)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %143 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %142, i32 159, i32 10)
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %270 [
    i32 160, label %147
    i32 320, label %188
    i32 640, label %229
  ]

147:                                              ; preds = %1
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %149 = call i32 @cit_write_reg(%struct.gspca_dev* %148, i16 zeroext 0, i32 257)
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %151 = call i32 @cit_write_reg(%struct.gspca_dev* %150, i16 zeroext 160, i32 259)
  %152 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %153 = call i32 @cit_write_reg(%struct.gspca_dev* %152, i16 zeroext 120, i32 261)
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %155 = call i32 @cit_write_reg(%struct.gspca_dev* %154, i16 zeroext 0, i32 266)
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = call i32 @cit_write_reg(%struct.gspca_dev* %156, i16 zeroext 36, i32 267)
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %159 = call i32 @cit_write_reg(%struct.gspca_dev* %158, i16 zeroext 169, i32 281)
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %161 = call i32 @cit_write_reg(%struct.gspca_dev* %160, i16 zeroext 22, i32 283)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %163 = call i32 @cit_write_reg(%struct.gspca_dev* %162, i16 zeroext 2, i32 285)
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %165 = call i32 @cit_write_reg(%struct.gspca_dev* %164, i16 zeroext 3, i32 286)
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %167 = call i32 @cit_write_reg(%struct.gspca_dev* %166, i16 zeroext 0, i32 297)
  %168 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %169 = call i32 @cit_write_reg(%struct.gspca_dev* %168, i16 zeroext 252, i32 299)
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %171 = call i32 @cit_write_reg(%struct.gspca_dev* %170, i16 zeroext 24, i32 258)
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %173 = call i32 @cit_write_reg(%struct.gspca_dev* %172, i16 zeroext 4, i32 260)
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %175 = call i32 @cit_write_reg(%struct.gspca_dev* %174, i16 zeroext 4, i32 282)
  %176 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %177 = call i32 @cit_write_reg(%struct.gspca_dev* %176, i16 zeroext 40, i32 284)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = call i32 @cit_write_reg(%struct.gspca_dev* %178, i16 zeroext 34, i32 298)
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = call i32 @cit_write_reg(%struct.gspca_dev* %180, i16 zeroext 0, i32 280)
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %183 = call i32 @cit_write_reg(%struct.gspca_dev* %182, i16 zeroext 0, i32 306)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %184, i32 33, i32 1)
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = call i32 @cit_write_reg(%struct.gspca_dev* %186, i16 zeroext 0, i32 265)
  store i32 3, i32* %5, align 4
  br label %270

188:                                              ; preds = %1
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = call i32 @cit_write_reg(%struct.gspca_dev* %189, i16 zeroext 0, i32 257)
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %192 = call i32 @cit_write_reg(%struct.gspca_dev* %191, i16 zeroext 160, i32 259)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = call i32 @cit_write_reg(%struct.gspca_dev* %193, i16 zeroext 120, i32 261)
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %196 = call i32 @cit_write_reg(%struct.gspca_dev* %195, i16 zeroext 0, i32 266)
  %197 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %198 = call i32 @cit_write_reg(%struct.gspca_dev* %197, i16 zeroext 40, i32 267)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %200 = call i32 @cit_write_reg(%struct.gspca_dev* %199, i16 zeroext 2, i32 285)
  %201 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %202 = call i32 @cit_write_reg(%struct.gspca_dev* %201, i16 zeroext 0, i32 286)
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %204 = call i32 @cit_write_reg(%struct.gspca_dev* %203, i16 zeroext 0, i32 297)
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %206 = call i32 @cit_write_reg(%struct.gspca_dev* %205, i16 zeroext 252, i32 299)
  %207 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %208 = call i32 @cit_write_reg(%struct.gspca_dev* %207, i16 zeroext 34, i32 298)
  %209 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %210 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %209, i32 33, i32 1)
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %212 = call i32 @cit_write_reg(%struct.gspca_dev* %211, i16 zeroext 0, i32 265)
  %213 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %214 = call i32 @cit_write_reg(%struct.gspca_dev* %213, i16 zeroext 217, i32 281)
  %215 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %216 = call i32 @cit_write_reg(%struct.gspca_dev* %215, i16 zeroext 6, i32 283)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = call i32 @cit_write_reg(%struct.gspca_dev* %217, i16 zeroext 33, i32 258)
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = call i32 @cit_write_reg(%struct.gspca_dev* %219, i16 zeroext 16, i32 260)
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = call i32 @cit_write_reg(%struct.gspca_dev* %221, i16 zeroext 4, i32 282)
  %223 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %224 = call i32 @cit_write_reg(%struct.gspca_dev* %223, i16 zeroext 63, i32 284)
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %226 = call i32 @cit_write_reg(%struct.gspca_dev* %225, i16 zeroext 28, i32 280)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %228 = call i32 @cit_write_reg(%struct.gspca_dev* %227, i16 zeroext 0, i32 306)
  store i32 5, i32* %5, align 4
  br label %270

229:                                              ; preds = %1
  %230 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %231 = call i32 @cit_write_reg(%struct.gspca_dev* %230, i16 zeroext 240, i32 261)
  %232 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %233 = call i32 @cit_write_reg(%struct.gspca_dev* %232, i16 zeroext 0, i32 266)
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = call i32 @cit_write_reg(%struct.gspca_dev* %234, i16 zeroext 56, i32 267)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %237 = call i32 @cit_write_reg(%struct.gspca_dev* %236, i16 zeroext 217, i32 281)
  %238 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %239 = call i32 @cit_write_reg(%struct.gspca_dev* %238, i16 zeroext 6, i32 283)
  %240 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %241 = call i32 @cit_write_reg(%struct.gspca_dev* %240, i16 zeroext 4, i32 285)
  %242 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %243 = call i32 @cit_write_reg(%struct.gspca_dev* %242, i16 zeroext 3, i32 286)
  %244 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %245 = call i32 @cit_write_reg(%struct.gspca_dev* %244, i16 zeroext 0, i32 297)
  %246 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %247 = call i32 @cit_write_reg(%struct.gspca_dev* %246, i16 zeroext 252, i32 299)
  %248 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %249 = call i32 @cit_write_reg(%struct.gspca_dev* %248, i16 zeroext 33, i32 258)
  %250 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %251 = call i32 @cit_write_reg(%struct.gspca_dev* %250, i16 zeroext 22, i32 260)
  %252 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %253 = call i32 @cit_write_reg(%struct.gspca_dev* %252, i16 zeroext 4, i32 282)
  %254 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %255 = call i32 @cit_write_reg(%struct.gspca_dev* %254, i16 zeroext 63, i32 284)
  %256 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %257 = call i32 @cit_write_reg(%struct.gspca_dev* %256, i16 zeroext 34, i32 298)
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %259 = call i32 @cit_write_reg(%struct.gspca_dev* %258, i16 zeroext 28, i32 280)
  %260 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %261 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %260, i32 33, i32 1)
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %263 = call i32 @cit_write_reg(%struct.gspca_dev* %262, i16 zeroext 0, i32 265)
  %264 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %265 = call i32 @cit_write_reg(%struct.gspca_dev* %264, i16 zeroext 64, i32 257)
  %266 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %267 = call i32 @cit_write_reg(%struct.gspca_dev* %266, i16 zeroext 64, i32 259)
  %268 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %269 = call i32 @cit_write_reg(%struct.gspca_dev* %268, i16 zeroext 0, i32 306)
  store i32 7, i32* %5, align 4
  br label %270

270:                                              ; preds = %1, %229, %188, %147
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %272 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %271, i32 126, i32 14)
  %273 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %274 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %273, i32 54, i32 17)
  %275 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %276 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %275, i32 96, i32 2)
  %277 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %278 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %277, i32 97, i32 4)
  %279 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %280 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %279, i32 98, i32 5)
  %281 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %282 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %281, i32 99, i32 20)
  %283 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %284 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %283, i32 150, i32 160)
  %285 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %286 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %285, i32 151, i32 150)
  %287 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %288 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %287, i32 103, i32 1)
  %289 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %290 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %289, i32 91, i32 12)
  %291 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %292 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %291, i32 92, i32 22)
  %293 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %294 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %293, i32 152, i32 11)
  %295 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %296 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %295, i32 44, i32 3)
  %297 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %298 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %297, i32 47, i32 42)
  %299 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %300 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %299, i32 48, i32 41)
  %301 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %302 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %301, i32 55, i32 2)
  %303 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %304 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %303, i32 56, i32 89)
  %305 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %306 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %305, i32 61, i32 46)
  %307 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %308 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %307, i32 62, i32 40)
  %309 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %310 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %309, i32 120, i32 5)
  %311 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %312 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %311, i32 123, i32 17)
  %313 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %314 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %313, i32 125, i32 75)
  %315 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %316 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %315, i32 127, i32 34)
  %317 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %318 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %317, i32 128, i32 12)
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %320 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %319, i32 129, i32 11)
  %321 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %322 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %321, i32 131, i32 253)
  %323 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %324 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %323, i32 134, i32 11)
  %325 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %326 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %325, i32 135, i32 11)
  %327 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %328 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %327, i32 126, i32 14)
  %329 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %330 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %329, i32 150, i32 160)
  %331 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %332 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %331, i32 151, i32 150)
  %333 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %334 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %333, i32 152, i32 11)
  %335 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %336 = load i32, i32* %5, align 4
  %337 = trunc i32 %336 to i16
  %338 = call i32 @cit_write_reg(%struct.gspca_dev* %335, i16 zeroext %337, i32 273)
  %339 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %340 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  switch i32 %341, label %373 [
    i32 160, label %342
    i32 320, label %353
    i32 640, label %364
  ]

342:                                              ; preds = %270
  %343 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %344 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %343, i32 31, i32 0)
  %345 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %346 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %345, i32 57, i32 31)
  %347 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %348 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %347, i32 59, i32 60)
  %349 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %350 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %349, i32 64, i32 10)
  %351 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %352 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %351, i32 81, i32 10)
  br label %373

353:                                              ; preds = %270
  %354 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %355 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %354, i32 31, i32 0)
  %356 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %357 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %356, i32 57, i32 31)
  %358 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %359 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %358, i32 59, i32 60)
  %360 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %361 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %360, i32 64, i32 8)
  %362 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %363 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %362, i32 81, i32 11)
  br label %373

364:                                              ; preds = %270
  %365 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %366 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %365, i32 31, i32 2)
  %367 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %368 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %367, i32 57, i32 62)
  %369 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %370 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %369, i32 64, i32 8)
  %371 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %372 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %371, i32 81, i32 10)
  br label %373

373:                                              ; preds = %270, %364, %353, %342
  %374 = load i64, i64* @rca_input, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %424

376:                                              ; preds = %373
  store i32 0, i32* %4, align 4
  br label %377

377:                                              ; preds = %420, %376
  %378 = load i32, i32* %4, align 4
  %379 = load i32**, i32*** @rca_initdata, align 8
  %380 = call i32 @ARRAY_SIZE(i32** %379)
  %381 = icmp slt i32 %378, %380
  br i1 %381, label %382, label %423

382:                                              ; preds = %377
  %383 = load i32**, i32*** @rca_initdata, align 8
  %384 = load i32, i32* %4, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32*, i32** %383, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %382
  %392 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %393 = load i32**, i32*** @rca_initdata, align 8
  %394 = load i32, i32* %4, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32*, i32** %393, i64 %395
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 2
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @cit_read_reg(%struct.gspca_dev* %392, i32 %399, i32 0)
  br label %419

401:                                              ; preds = %382
  %402 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %403 = load i32**, i32*** @rca_initdata, align 8
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32*, i32** %403, i64 %405
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  %409 = load i32, i32* %408, align 4
  %410 = trunc i32 %409 to i16
  %411 = load i32**, i32*** @rca_initdata, align 8
  %412 = load i32, i32* %4, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32*, i32** %411, i64 %413
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @cit_write_reg(%struct.gspca_dev* %402, i16 zeroext %410, i32 %417)
  br label %419

419:                                              ; preds = %401, %391
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %4, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %4, align 4
  br label %377

423:                                              ; preds = %377
  br label %424

424:                                              ; preds = %423, %373
  ret i32 0
}

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i16 zeroext, i32) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
